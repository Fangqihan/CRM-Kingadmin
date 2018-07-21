from django.conf.urls import url,include
from django.contrib import admin

urlpatterns = [
    url(r'^admin/', admin.site.urls),
    url(r'^crm/', include('crm.urls')),
    url(r'^kingadmin/', include('king_admin.urls')),
    url(r'^student/', include('student.urls')),
    url(r'^teacher/', include('teacher.urls')),
]
