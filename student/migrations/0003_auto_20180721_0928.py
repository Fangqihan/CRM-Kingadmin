# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-07-21 09:28
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('student', '0002_homeworkrecord'),
    ]

    operations = [
        migrations.AlterField(
            model_name='homeworkrecord',
            name='status',
            field=models.SmallIntegerField(choices=[(0, '未提交'), (1, '待批改'), (2, '迟交')], verbose_name='作业状态'),
        ),
    ]
