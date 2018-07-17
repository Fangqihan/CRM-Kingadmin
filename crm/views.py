from django.shortcuts import render,redirect,HttpResponse
from django.contrib.auth import authenticate,login,logout
from django.contrib.auth.decorators import login_required
from django.contrib.auth.hashers import make_password
from .models import UserProfile


@login_required
def dashboard(request):
    return render(request, 'crm/dashboard.html')


def user_register(request):
    if request.method == "POST":
        username = request.POST.get('username')
        password1 = request.POST.get('password1')
        password2 = request.POST.get('password2')
        if username and password1 and password2 and password1==password2:
            print('注册成功')
            user = UserProfile(username=username,password=make_password(password1))
            user.save()
            return redirect('/crm/login/')

    return render(request,'crm/register.html')


def user_login(request):
    if request.method == "POST":
        username = request.POST.get('username')
        password = request.POST.get('password')
        print(username,password)
        user = authenticate(username=username,password=password)
        if user:
            print('验证通过',user)
            login(request,user)
            return redirect('/crm/')

    return render(request,'crm/login.html')


def user_logout(request):
    logout(request)
    return redirect('login/')


def change_info(request,id):
    pass


from crm import models


def add_student(request):
    """销售添加学生"""
    customers = models.CustomerInfo.objects.all()
    branches = models.Branch.objects.all()

    # 找到所有人员信息中找出角色是销售的人员
    consultants = models.UserProfile.objects.filter(role__title='销售').exclude(id=1)

    if request.method=='POST':
        customerid = request.POST.get('customer')
        class_gradeid = request.POST.get('class_grade')
        consultantid = request.POST.get('consultant')

        from crm.models import StudentEnrollment
        if consultantid and class_gradeid and consultantid:
            student_enroll = StudentEnrollment.objects.create(
                customer_id=customerid,
                class_grade_id=class_gradeid,
                consultant_id=consultantid
            )
            print('学生创建成功')
            enroll_links = 'http://127.0.0.1:8008/crm/enroll/%s/' % student_enroll.id

    return render(request,'crm/student_enroll.html',locals())


from crm.forms import CustomerInfoForm
from crm.models import StudentEnrollment,CustomerInfo


def student_enroll(request,id):
    student_enroll = StudentEnrollment.objects.filter(id=int(id)).first()
    customer_obj = student_enroll.customer
    price = student_enroll.class_grade.course.price
    class_grade = student_enroll.class_grade
    course = class_grade.course

    if request.method=='GET':
        customer_form = CustomerInfoForm(instance=customer_obj)
    elif request.method =='POST':
        customer_form = CustomerInfoForm(instance=customer_obj,data=request.POST)
        if customer_form.is_valid():
            customer_form.save()
        errors = customer_form.errors
        print(errors)
        return HttpResponse('待审批....')
    return render(request,'crm/complete_info.html',locals())



from crm.models import Branch,ClassList
import json


def get_classes(request,id):
    branch = Branch.objects.filter(id=int(id)).first()
    classes = list(ClassList.objects.filter(branch=branch).values('id','branch__name','course__name','semester'))
    return HttpResponse(json.dumps(classes), content_type="application/json")




