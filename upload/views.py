from django.shortcuts import render
from django.http import HttpResponse
from django.forms import forms
from .models import FileSimpleModel

class FileUploadForm(forms.Form):
    my_file = forms.FileField()

def upload(request):
    """
    文件接收 view
    :param request: 请求
    :return:
    """
    if request.method == 'POST':
        my_form = FileUploadForm(request.POST, request.FILES)
        if my_form.is_valid():
            # f = my_form.cleaned_data['my_file']
            # handle_uploaded_file(f)
            file_model = FileSimpleModel()
            file_model.file_field = my_form.cleaned_data['my_file']
            file_model.save()
        return HttpResponse('Upload Success')
    else:
        my_form = FileUploadForm()
    return render(request, 'upload/upload_temp.html', {'form': my_form })

# def handle_uploaded_file(f):
#     with open(f.name, 'wb+') as destination:
#         for chunk in f.chunks():
#             destination.write(chunk)

