from django.conf.urls import url,include
from student import views

urlpatterns = [
    url(r'^account/$', views.my_account,name='my_account'),

    url(r'^my_homework/$', views.homework_list,name='my_homework'),  # 已登录的学生的作业列表
    url(r'^my_homework/(\d+)/$', views.homework_detail,name='homework_detail'),

    url(r'^my_homework/upload/(\d+)/$', views.homework_upload, name='homework_upload'),
    url(r'^my_homework/delete/(\d+)/([\w|\.]+)/$', views.homework_delete, name='homework_delete'),
    url(r'^my_homework/download/(\d+)/([\w|\.]+)/$', views.homework_download, name='homework_download'),
]
