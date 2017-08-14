from django.conf.urls import url
from . import views

app_name = 'message_board'
urlpatterns = [
    url(r'^index/$', views.index, name='guestbook'),
    url(r'^create/$', views.create, name='create'),
    url(r'^save/$', views.save, name='save'),
]