from django.shortcuts import render
from django.http import HttpResponse
from home.common import C_Post, C_Comment
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
    return render(request, 'pages/details.html', {'PostDetails': result, 'Comment': comment, 'Count_Comment':count_comment, 'Posts_Related':related_post})
