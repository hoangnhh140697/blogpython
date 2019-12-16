from django.db import connections
from home.common import Common

def get_All_Tag_By_Post(postid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM tag t, post p WHERE t.post_id = p.post_id AND t.post_id = %s"
    cur.execute(query, [postid])
    result = Common.dictfetchall(cur)
    return result


def get_All_Post_By_Tag(tagid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM tag t, post p WHERE t.post_id = p.post_id AND t.tag_id = %s"
    cur.execute(query, [tagid])
    result = Common.dictfetchall(cur)
    return result;