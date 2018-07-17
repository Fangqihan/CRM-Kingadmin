from django.conf.urls import url
from king_admin import views

urlpatterns = [
    url(r'^$', views.home_page, name='king_admin_homepage'),
    url(r'^(\w+)/$', views.app_page, name='kingadmin_app_page'),
    url(r'^login/$', views.user_login, name='king_admin_login'),
    url(r'^logout/$', views.user_logout, name='king_admin_logout'),
    url(r'^(\w+)/(\w+)/$', views.model_obj_list, name='model_obj_list'),
    url(r'^(\w+)/(\w+)/(\d+)/change$', views.change_obj, name='change_obj'),
    url(r'^(\w+)/(\w+)/(\d+)/delete$', views.delete_obj, name='delete_obj'),
    url(r'^(\w+)/(\w+)/add$', views.add_obj, name='add_obj'),
]




