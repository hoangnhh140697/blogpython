from django.shortcuts import render
from django.http import HttpResponse
from home.common import C_Post, C_Comment, C_PostCategory, C_Tag
from home.common import Common
from slugify import slugify

import datetime
# Create your views here.

def index(request):
    
    return render(request, 'pages/share.html')


def details(request, id):
    result = C_Post.get_Single_Post_By_Post(id)
    if request.method == 'POST':
        name = request.POST['txtName']
        content = request.POST['txtContent']
        post_id = request.POST['txtPostId']
        C_Comment.insert_Comment(post_id, None, content, 0, name, datetime.date.today(), 0)
    comment = C_Comment.get_All_Comment_By_Post(id)
    related_post = C_Post.get_Related_Post_By_Cate(id)
    count_comment = len(comment)
    #Categories
    result_cate = C_PostCategory.get_All_Category_By_Post(id)
    list_cate = []
    for cate in result_cate:
        cateid = cate["cate_id"]
        name = cate["cate_name"]
        
        lst = {'cate_id': cateid,'cate_slug': slugify(name), 'cate_name': name}
        list_cate.append(lst)
    #Tags
    list_tag = []
    result_tag = C_Tag.get_All_Tag_By_Post(id)
    for tag in result_tag:
        tagid = tag["tag_id"]
        name = tag["tag_name"]
        lst = {'tag_id': tagid,'tag_slug': slugify(name), 'tag_name': name}
        list_tag.append(lst)

    #Get path server
    path = Common.get_full_path(request)
    
    
    return render(request, 'pages/details.html', {'path': path, 'PostDetails': result, 'ListTag':list_tag , 'ListCate':list_cate, 'Comment': comment, 'Count_Comment':count_comment, 'Posts_Related':related_post})
