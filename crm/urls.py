from django.conf.urls import url,include
from crm import views

urlpatterns = [
    url(r'^$', views.dashboard,name='sales_dashboard'),
    url(r'^login/$', views.user_login, name='crm_login'),
    url(r'^register/$', views.user_register, name='crm_register'),
    url(r'^logout/$', views.user_logout, name='crm_logout'),

    url(r'^enroll$', views.add_student, name='add_student'),  # 第一步：销售添加学生
    url(r'^enroll/(\d+)/$', views.student_enroll, name='student_enroll'),  # 第二步：学生完善信息

    url(r'^get_classes/(\d+)/$', views.get_classes, name='get_classes'),

]