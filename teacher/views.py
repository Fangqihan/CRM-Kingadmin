from django.shortcuts import render,redirect
from crm import models
from django.contrib.auth.decorators import login_required
from student.models import HomeworkRecord,Homework
from .forms import CommentForm


@login_required
def class_list(request):
    class_list = models.ClassList.objects.all()
    return render(request,'teachers/class_list.html',locals())


@login_required
def student_list(request,class_id):
    class_grade = models.ClassList.objects.filter(id=class_id).first()
    enroll_student_list= class_grade.studentenrollment_set.all()
    return render(request,'teachers/student_list.html',locals())


from crm.models import Student

@login_required
def homework_list(request,stu_id):
    stu = Student.objects.filter(id=int(stu_id)).first()
    homework_lst = HomeworkRecord.objects.filter(student__id=int(stu_id))

    return render(request,'teachers/student_homework_list.html',locals())


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


@login_required
def homework_comment(request,record_id):
    form = CommentForm()
    homework_rec = HomeworkRecord.objects.filter(id=int(record_id)).first()
    stu_id = homework_rec.student.id

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
            return redirect('/teacher/homework_list/%s/'% stu_id)

    return render(request, 'teachers/homework_coment.html',locals())






