# -*- coding: utf-8 -*-
# Generated by Django 1.11.1 on 2017-08-12 12:08
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    initial = True

    dependencies = [
    ]

    operations = [
        migrations.CreateModel(
            name='Message',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('username', models.CharField(max_length=256)),
                ('title', models.CharField(max_length=512)),
                ('content', models.TextField(max_length=256)),
                ('publish', models.DateTimeField(auto_now=True)),
            ],
        ),
    ]
