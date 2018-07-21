from django.conf.urls import url,include
from student import views

urlpatterns = [
    url(r'^account/$', views.my_account,name='my_account'),
    url(r'^homework/$', views.homework_list,name='my_homework'),
    url(r'^homework/(\d+)/$', views.homework_detail,name='homework_detail'),

    url(r'^order/$', views.my_order,name='my_order'),
    url(r'^homework/upload/(\d+)/$', views.homework_upload, name='homework_upload'),
    url(r'^homework/delete/(\d+)/([\w|\.]+)/$', views.homework_delete, name='homework_delete'),
    url(r'^homework/download/(\d+)/([\w|\.]+)/$', views.homework_download, name='homework_download'),
]
