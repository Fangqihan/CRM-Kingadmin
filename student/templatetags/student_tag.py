from django import template
register = template.Library()

import datetime

@register.simple_tag
def get_date(publish_date, days):
    """获取截止时间,格式：'2018-07-22'"""
    d_tuple = datetime.datetime.strptime(str(publish_date),'%Y-%m-%d')
    d = d_tuple+datetime.timedelta(days=int(days))
    deadline = str(d)[:10]
    return deadline



@register.simple_tag
def replace_str(s):
    return str(s).replace('.','_')


@register.simple_tag
def to_string(s):
    return str(s)[:-7]

import os
from django import conf


@register.simple_tag
def get_file_name(record_id):
    file_name=''
    homework_upload_dir = os.path.join(conf.settings.STUDENT_HOWEWORK_DIR, str(record_id))
    file_lst = os.listdir(homework_upload_dir)
    if file_lst:
        file_name = file_lst[0]
    return file_name






