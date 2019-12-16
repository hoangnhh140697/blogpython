from django.db import connections
from home.common import Common

def get_All_Category_By_Post(postid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM post_category pc, category c, post p WHERE pc.cate_id = c.cate_id AND pc.post_id = p.post_id AND pc.post_id = %s"
    cur.execute(query, [postid])
    result = Common.dictfetchall(cur)
    return result
