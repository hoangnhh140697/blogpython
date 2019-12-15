from django.db import connections
from home.common import Common

def get_Post_By_Cate(cateid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM post_category pc, category c, post p WHERE pc.post_id = p.post_id AND pc.cate_id = c.cate_id AND pc.cate_id = %s LIMIT 4"
    cur.execute(query, [cateid])
    result = Common.dictfetchall(cur)
    return result;

def get_All_Post_By_Cate(cateid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM post_category pc, category c, post p WHERE pc.post_id = p.post_id AND pc.cate_id = c.cate_id AND pc.cate_id = %s"
    cur.execute(query, [cateid])
    result = Common.dictfetchall(cur)
    return result;


def get_Related_Post_By_Cate(cateid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM post_category pc, category c, post p WHERE pc.post_id = p.post_id AND pc.cate_id = c.cate_id AND pc.cate_id = %s ORDER BY RAND()"
    cur.execute(query, [cateid])
    result = Common.dictfetchall(cur)
    return result;


def get_Single_Post_By_Post(postid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM post p, auth_user au WHERE p.user_id = au.id AND post_id = %s"
    cur.execute(query, [postid])
    result = Common.dictfetchone(cur)
    return result;