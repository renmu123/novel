from django.conf.urls import url
from . import views

app_name = 'novel'
urlpatterns = [
    url(r'^$', views.index, name='index'),
    url(r'^novel/(?P<pk>[0-9]+)/$', views.detail, name='detail'),
    url(r'^download/(?P<path>.*)/(?P<num>[0-9]+)/$', views.download, name='download'),
    url(r'^search/$', views.search, name='search'),

]