from django.conf.urls import url
from teacher import views

urlpatterns = [
    url(r'^my_classes/$', views.class_list, name='class_list'),
    # 班级列表

    url(r'^my_classes/(\d+)/$', views.student_list, name='student_list'),
    # 班级学生列表

    url(r'^my_classes/homework_list/(\d+)/$', views.homework_list, name='homework_list'),
    # 查看学生的所有作业记录（包含未提交作业）

    url(r'^my_classes/homework_comment/(\d+)/$', views.homework_comment, name='homework_comment'),
    # 显示学生的所有作业记录（包含未提交作业）

    url(r'^review_homework_list/$', views.review_homeworks, name='review_homework_list'),
    # 显示学生的待批改作业
]
