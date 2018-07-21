from django.shortcuts import render,HttpResponse
from django.contrib.auth.decorators import login_required


def my_account(request):
    pass


def my_order(request):
    pass


from student.models import HomeworkRecord


@login_required
def homework_list(request):
    if request.user.is_superuser:
        homework_record_list = HomeworkRecord.objects.all()
    else:
        student = request.user.student
        homework_record_list = HomeworkRecord.objects.filter(student=student)

    return render(request,'student/homework_list.html',locals())


@login_required
def homework_detail(request,record_id):
    homework_record = HomeworkRecord.objects.filter(id=int(record_id)).first()

    if request.method == 'GET':
        upload_files = []
        from django import conf
        import os
        homework_upload_dir = os.path.join(conf.settings.STUDENT_HOWEWORK_DIR, record_id)
        if os.path.isdir(homework_upload_dir):
            upload_files = os.listdir(homework_upload_dir)

    return render(request,'student/homework_detail.html',locals())


import os
from django import conf
import json
from django.utils.timezone import datetime
import datetime


@login_required
def homework_upload(request, record_id):
    """保存文件，对应的文件夹存在则保存至文件夹内，不存在则先创建文件夹"""
    upload_files=[]
    homework_upload_dir = os.path.join(conf.settings.STUDENT_HOWEWORK_DIR, record_id)
    if not os.path.isdir(homework_upload_dir):
        os.mkdir(homework_upload_dir)

    file_obj = request.FILES.get('file')
    homework_record = HomeworkRecord.objects.filter(id=record_id).first()

    if len(os.listdir(homework_upload_dir)) >= 1 or homework_record.status != 0:
        return HttpResponse(json.dumps({'status': False, 'err_msg': '仅允许提交一次作业'}))

    with open(os.path.join(homework_upload_dir, file_obj.name), "wb") as f:
        for chunks in file_obj.chunks():
            f.write(chunks)

    homework_record.status = 1
    homework_record.upload_time= datetime.datetime.now()
    homework_record.save()
    return HttpResponse(json.dumps({'status': True, }))


@login_required
def homework_delete(request, record_id, file_name):
    file_path = os.path.join(conf.settings.STUDENT_HOWEWORK_DIR, record_id, file_name)
    if os.path.exists(file_path):
        os.remove(file_path)
        if request.is_ajax():
            return HttpResponse(json.dumps({'status': True, 'file_id': str(file_name).replace('.', '_')}))
        return

    else:
        print('no such file:%s' % file_path)
        return HttpResponse(json.dumps({'status': False, 'error_msg': '没有找到此文件'}))



from django.http import FileResponse
from django.utils.encoding import escape_uri_path

@login_required
def homework_download(request, record_id, file_name):
    """文件下载,问题是若返回 中文字段 会出现乱码"""
    file_path = os.path.join(conf.settings.STUDENT_HOWEWORK_DIR, record_id, file_name)
    file = open(file_path,'rb')
    response = FileResponse(file)
    response['Content-Type'] = 'application/octet-stream'
    # 此处设置防止中文乱码
    response['Content-Disposition'] = "attachment; filename*=utf-8''{}".format(escape_uri_path(file_name))
    return response



def homework_download_1(request, record_id, file_name):
    file_path = os.path.join(conf.settings.STUDENT_HOWEWORK_DIR, record_id, file_name)
    try:
        f = open(file_path,'rb')
        download_file = open(file_name,'wb')
        for line in f:
            download_file.write(line)
        f.close()
        download_file.close()
        return HttpResponse(json.dumps({'status': True,}))
    except Exception:
        return HttpResponse(json.dumps({'status': False, 'error_msg': '下载失败'}))


