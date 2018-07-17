from django.contrib.auth import authenticate, login, logout
from king_admin.sites import site
from django.shortcuts import render, redirect
from king_admin import app_setup

# 程序已启动就自动执行
app_setup.kingadmin_auto_discover()

from king_admin.sites import site

print('site', site.enable_admins)


def home_page(request):
    if request.user.is_authenticated:
        return render(request, 'kingadmin/index.html', {'enabled_admins': site.enable_admins})
    return redirect('/kingadmin/login/')


def app_page(request,app_name):
    if request.user.is_authenticated:
        models = site.enable_admins[app_name]
        for k,v in models.items():
            print(k,v)
        return render(request, 'kingadmin/app_page.html', locals())
    return redirect('/kingadmin/login/')


def user_login(request):
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')
        print(username, password)
        user = authenticate(username=username, password=password)
        if user:
            print('验证通过', user)
            login(request, user)
            return redirect('/kingadmin/')

    return render(request, 'kingadmin/login.html')


def user_logout(request):
    logout(request)
    return redirect('/kingadmin/login/')


import json


def model_obj_list(request, app_name, model_name):
    admin_class = site.enable_admins[app_name][model_name]
    model_class = admin_class.model

    if request.method == "POST":
        action = request.POST.get('action')
        select_id_lst = json.loads(request.POST.get('obj_id_list'))
        if select_id_lst:
            # 转换成queryset对象，方便后续操作
            obj_lst = model_class.objects.filter(id__in=[int(i) for i in select_id_lst ])

        action_func = getattr(admin_class,action)
        action_func(request,obj_lst)

    query_set = model_class.objects.all()  # 结构类似生成器

    # 开始过滤,生成过滤条件====================
    filter_conditions = {}
    for key, val in request.GET.items():
        if val and key not in ('page', 'order', 'search'):
            filter_conditions[key] = val
    if filter_conditions:
        query_set = query_set.filter(**filter_conditions)
    admin_class.filter_conditions = filter_conditions  # {'status':1}

    # 开始排序
    order_column = {}
    order_index = request.GET.get('order')
    if order_index:
        order_field = admin_class.list_display[abs(int(order_index)) - 1]
        # 只判断order_index是否是正数,其余交给前端处理！
        if str(order_index).startswith('-'):
            query_set = query_set.order_by('-' + order_field)
        else:
            query_set = query_set.order_by(order_field)
        order_column[order_field] = order_index  # {name：1}

    # 搜索=================
    search_str = request.GET.get('search')
    if search_str:  # kate
        search_fields = admin_class.search_fields  # ['name','consultant__username']
        from django.db.models import Q
        q = Q()
        q.connector = 'OR'
        for field_name in search_fields:
            # q.append(('name__contains','阿'))
            q.children.append(('%s__contains' % field_name, search_str))
        query_set = query_set.filter(q)

    print(admin_class.actions)

    # django自带的分页====================
    # from django.core.paginator import EmptyPage, PageNotAnInteger, Paginator
    # paginator = Paginator(query_set, 1)  # 每页三条数据
    # page = request.GET.get('page')

    # try:
    #     contacts = paginator.page(page)
    # except PageNotAnInteger:
    #     # If page is not an integer, deliver first page.
    #     contacts = paginator.page(1)
    # except EmptyPage:
    #     # If page is out of range (e.g. 9999), deliver last page of results.
    #     contacts = paginator.page(paginator.num_pages)

    # 利用别人写好的pure_pagination模块================================
    # https://github.com/jamespacileo/django-pure-pagination
    from pure_pagination import Paginator, EmptyPage, PageNotAnInteger
    try:
        page = request.GET.get('page', 1)
    except PageNotAnInteger:
        page = 1

    p = Paginator(query_set, request=request, per_page=10)
    contacts = p.page(page)
    return render(request, 'kingadmin/table_objects_list_1.html', locals())


from .form_handle import create_model_form


def change_obj(request, app_name, model_name, id):
    """动态生成并返回modelform"""
    admin_class = site.enable_admins[app_name][model_name]
    # dynamic_form = create_model_form(admin_class)  # 根据提供的参数动态创建modelform
    # 根据id取出类对象
    obj = admin_class.model.objects.filter(id=int(id)).first()
    dynamic_form = create_model_form(admin_class)  # 根据提供的参数动态创建modelform

    if request.method == 'POST':
        form_obj = dynamic_form(request.POST, instance=obj)  # 修改
        if form_obj.is_valid():  # 注意，必须验证通过才能保存，否则可能报错
            form_obj.save()  # 保存
            return redirect('/kingadmin/%s/%s' % (app_name, model_name))
        errors = form_obj.errors
        return render(request, 'kingadmin/change_info.html', locals())

    form_obj = dynamic_form(instance=obj)  # 前端然后对象的所有数据
    return render(request, 'kingadmin/change_info.html', locals())


def delete_obj(request, app_name, model_name, id):
    admin_class = site.enable_admins[app_name][model_name]
    model_class = admin_class.model
    model_name=model_class._meta.model_name
    obj = model_class.objects.filter(id=int(id)).first()
    if request.method=='POST':
        obj.delete()
        return redirect('/kingadmin/%s/%s' % (app_name, model_class._meta.model_name))
    return render(request,'kingadmin/del_obj.html',locals())


def add_obj(request, app_name, model_name):
    admin_class = site.enable_admins[app_name][model_name]
    dynamic_form = create_model_form(admin_class, add=True)
    if request.method == 'GET':
        form_obj = dynamic_form()
        return render(request, 'kingadmin/add_obj.html', locals())

    elif request.method == 'POST':
        form_obj = dynamic_form(data=request.POST)
        if form_obj.is_valid():
            form_obj.save()
            return redirect('/kingadmin/%s/%s' % (app_name, model_name))
        errors = form_obj.errors
        return render(request, 'kingadmin/add_obj.html', locals())


def enroll(request):

    return render(request,'')


def save_and_add(request):

    pass





















