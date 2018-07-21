print('执行kingadmin.py文件...')

from king_admin.sites import site
from crm import models
from king_admin.base_king_admin import BaseKingAdmin


class CustomerInfoAdmin(BaseKingAdmin):
    def __init__(self):
        self.actions.extend(self.default_actions)

    list_display = ['name','contact_type', 'status', 'source','consultant','date']
    list_filter = ['contact_type','consultant','status','source','date']
    search_fields = ['name','consultant__username']
    # readonly_fields = ['name']
    filter_horizontal = ['consult_course']
    # actions = ['change_status']

    # def change_status(self,request,query_set):
    #     print(query_set,'===========')
    #     query_set.update(status=1)


class UserprofileInfoAdmin(BaseKingAdmin):
    list_display = ['username','role']


site.register(models.CustomerInfo, CustomerInfoAdmin)
site.register(models.Role)
site.register(models.UserProfile)
site.register(models.Course)
site.register(models.CourseRecord)
site.register(models.Student)
site.register(models.ClassList)
site.register(models.StudyRecord)
site.register(models.Branch)
site.register(models.StudentEnrollment)
site.register(models.ContractTemplate)
site.register(models.Menu)
print('注册结束')



