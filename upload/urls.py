from django.conf.urls import url
from . import views

app_name = 'upload'
urlpatterns = [
    url(r'^upload/$', views.upload, name='upload'),
]