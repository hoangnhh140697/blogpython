from django.shortcuts import render
from django.http import HttpResponse
from .models import Post
from home.common import C_Post
from .forms import RegistrationForm
from django.http import HttpResponseRedirect

def index(request):
    # Data = {'Posts': Post.objects.all().order_by("-date_published")}
    
    cate_1 = C_Post.get_Post_By_Cate(2)
    cate_2 = C_Post.get_Post_By_Cate(3)
    cate_3 = C_Post.get_Post_By_Cate(4)
    cate_4 = C_Post.get_Post_By_Cate(5)


    return render(request, 'pages/home.html', {'Post_1': cate_1, 'Post_2': cate_2, 'Post_3': cate_3, 'Post_4': cate_4})

def error404(request, exception):
    return render(request, 'pages/error.html')

def error500(request):
    return render(request, 'pages/error.html')

def register(request):
    form = RegistrationForm()
    if request.method == 'POST':
        form = RegistrationForm(request.POST)
        if form.is_valid():
            form.save()
            return HttpResponseRedirect('/')
    return render(request, 'pages/register.html', {'form':form})