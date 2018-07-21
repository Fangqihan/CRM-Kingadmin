from django.shortcuts import render,redirect
from crm import models


def class_list(request):
    class_list = models.ClassList.objects.all()
    return render(request,'teachers/class_list.html',locals())


def student_list(request,class_id):
    class_grade = models.ClassList.objects.filter(id=class_id).first()
    student_list= class_grade.studentenrollment_set.all()
    return render(request,'teachers/student_list.html',locals())


from student.models import HomeworkRecord,Homework


def homework_list(request,stu_id):
    homework_lst = HomeworkRecord.objects.filter(student__id=int(stu_id))
    print(homework_lst)
    return render(request,'teachers/students_homework_uploads.html',locals())


from django.contrib.auth.decorators import login_required


@login_required
def review_homeworks(request):
    """待批改作业列表"""
    IS_TEACHER=False
    user = request.user
    for role in user.role.all():
        if role.title=='讲师':
            IS_TEACHER=True
    if IS_TEACHER:
        homework_lst = HomeworkRecord.objects.filter(student__student__class_grade__teacher=user,status=1)
    return render(request,'teachers/review_homework_list.html',locals())


from .forms import CommentForm


@login_required
def homework_comment(request,record_id):
    form = CommentForm()
    if request.method=='POST':
        form = CommentForm(request.POST)
        if form.is_valid():
            score = form.cleaned_data.get('score','')
            comment = form.cleaned_data.get('comment','')
            homework_rec = HomeworkRecord.objects.filter(id=int(record_id)).first()
            homework_rec.teacher_comments = comment
            homework_rec.score=int(score)
            homework_rec.status=2
            homework_rec.save()
            return redirect('/teacher/review_homeworks/')

    homework_rec = HomeworkRecord.objects.filter(id=int(record_id)).first()
    return render(request, 'teachers/homework_coment.html',locals())


