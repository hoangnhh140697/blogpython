from django.shortcuts import render
from django.http import HttpResponse
from home.common import C_Tag
from home.common import Common
# Create your views here.
def index(request, slug, id):
    tag = C_Tag.get_All_Post_By_Tag(id)
    count = len(tag)
    path = Common.get_full_path(request)

    return render(request, 'pages/tag.html', {'Posts': tag, 'Count':count, 'path':path})