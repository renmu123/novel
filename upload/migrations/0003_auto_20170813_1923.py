# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-08-13 11:23
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('upload', '0002_auto_20170813_1854'),
    ]

    operations = [
        migrations.AlterField(
            model_name='filesimplemodel',
            name='file_field',
            field=models.FileField(upload_to='static/images'),
        ),
    ]
