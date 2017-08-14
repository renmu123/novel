from django.shortcuts import render
from django.http import HttpResponseRedirect
from . import models
# Create your views here.
def index(request):
    messages = models.Message.objects.all()
    return render(request, 'message_board/index.html', {'messages' : messages})

def create(request):
    return render(request, 'message_board/create.html')

def save(request):
    username = request.POST.get("username")
    title = request.POST.get("title")
    content = request.POST.get("content")
    # publish = datetime.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    message = models.Message(title=title, content=content, username=username)
    message.save()
    return HttpResponseRedirect('/guestbook/index/')

