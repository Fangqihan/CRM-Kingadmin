from django.db import models
import datetime

class Homework(models.Model):
    title = models.CharField(max_length=32, verbose_name='作业标题')
    desc = models.TextField(verbose_name='作业需求')
    scoring_point = models.TextField(verbose_name='得分点')
    publish_date = models.DateField(auto_now_add=True,verbose_name='发布日期')
    suggested_complete_days = models.IntegerField(verbose_name='完成天数')

    def __str__(self):
        return self.title

    class Meta:
        db_table = '作业'
        verbose_name = '作业'
        verbose_name_plural = verbose_name


from crm.models import Student


class HomeworkRecord(models.Model):
    """作业记录"""
    homework = models.ForeignKey('Homework')
    student = models.ForeignKey(Student,verbose_name='学生',null=True,blank=True)
    status_choices = ((0,'未提交'),(1,'待批改'),(2,'已批改'),(3,'迟交'))
    status = models.SmallIntegerField(verbose_name='作业状态',choices=status_choices)
    teacher_comments = models.TextField(verbose_name='导师点评',null=True,blank=True)
    score = models.SmallIntegerField(verbose_name='分数',default=0)
    upload_time = models.DateTimeField(verbose_name='提交时间',null=True,blank=True)

    def __str__(self):
        return '%s-%s' %(self.homework,self.student)

    class Meta:
        db_table = '学生作业记录'
        verbose_name = '学生作业记录'
        verbose_name_plural = verbose_name











