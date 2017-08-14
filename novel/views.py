from django.http import HttpResponse
from django.shortcuts import render, get_object_or_404
from .models import Post, Tag
from django.http import StreamingHttpResponse

def index(request):
    post_list = Post.objects.all().order_by('-created_time')
    # .order_by('-created_time')
    return render(request, 'novel/index.html', context={'post_list':post_list})

def detail(request, pk):
    post = get_object_or_404(Post, pk=pk)
    return render(request, 'novel/detail.html', context={'post': post})

def download(request, path, num):
    # do something...

    def file_iterator(file_name, chunk_size=512):
        with open(file_name, 'rb') as f:
            while True:
                c = f.read(chunk_size)
                if c:
                    yield c
                else:
                    break

    the_file_name = "download/" + path + str(num) + '.mobi'
    # print(pk)
    # the_file_name = 'download/' + pk
    response = StreamingHttpResponse(file_iterator(the_file_name))

    return response

# def search(request, search_name):
#     post = get_object_or_404(Post, title=search_name)
#     return render(request, 'novel/search.html', context={'post': post})

def search(request):
    q = request.GET.get('q')

    post_list = Post.objects.filter(title__icontains=q)

    if not post_list:
        post_list = Post.objects.filter(body__icontains=q)
        return render(request, 'novel/search.html', {'post_list': post_list})

    return render(request, 'novel/search.html', {'post_list': post_list})