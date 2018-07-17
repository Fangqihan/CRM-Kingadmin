print('执行kingadmin.py文件...')

from king_admin.sites import site
from app02 import models
from king_admin.base_king_admin import BaseKingAdmin


class DepartmentAdmin(BaseKingAdmin):
    list_display = ['title','num_of_people','date']


site.register(models.Department, DepartmentAdmin)

