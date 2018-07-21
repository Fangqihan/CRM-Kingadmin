print('执行kingadmin.py文件...')

from king_admin.sites import site
from student import models
from king_admin.base_king_admin import BaseKingAdmin


class HomeworkAdmin(BaseKingAdmin):
    list_display = ['title','suggested_complete_days','publish_date']


class HomeworkRecordAdmin(BaseKingAdmin):
    list_display = ['homework','student', 'status','score']


site.register(models.Homework,HomeworkAdmin)
site.register(models.HomeworkRecord,HomeworkRecordAdmin)

print('注册结束')



