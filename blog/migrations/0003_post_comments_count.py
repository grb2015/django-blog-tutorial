# -*- coding: utf-8 -*-
# Generated by Django 1.10.6 on 2017-06-17 03:18
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('blog', '0002_auto_20170517_1929'),
    ]

    operations = [
        migrations.AddField(
            model_name='post',
            name='comments_count',
            field=models.PositiveIntegerField(default=0),
        ),
    ]