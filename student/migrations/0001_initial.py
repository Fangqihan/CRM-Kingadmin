# -*- coding: utf-8 -*-
# Generated by Django 1.11 on 2018-07-19 16:07
from __future__ import unicode_literals

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    initial = True

    dependencies = [
        ('crm', '0018_auto_20180719_0023'),
    ]

    operations = [
        migrations.CreateModel(
            name='Homework',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('title', models.CharField(max_length=32, verbose_name='作业标题')),
                ('desc', models.TextField(verbose_name='作业需求')),
                ('scoring_point', models.TextField(verbose_name='得分点')),
                ('publish_date', models.DateField(auto_now_add=True, verbose_name='发布日期')),
                ('suggested_complete_days', models.IntegerField(verbose_name='完成天数')),
            ],
            options={
                'verbose_name': '作业',
                'verbose_name_plural': '作业',
                'db_table': '作业',
            },
        ),
    ]
