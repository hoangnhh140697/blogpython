from django.shortcuts import render
from django.http import HttpResponse
from home.common import C_Post
from home.common import Common
from django.views.generic import ListView, DetailView


def index(request, slug, id):    
    cate = C_Post.get_All_Post_By_Cate(id)
    count = len(cate)
    path = Common.get_full_path(request)

    related_post = C_Post.get_Related_Post_By_Cate(id)
    return render(request, 'pages/category.html', {'Posts': cate, 'Posts_Related':related_post, 'Count':count, 'path':path})
