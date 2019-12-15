from django.db import connections
from home.common import Common

def insert_Comment(post_id, user_id, content, parent_comment, vister_name, comment_date, approve):
    cur = connections['default'].cursor()
    query = "INSERT INTO comment(post_id, user_id, content, parent_comment, visiter_name, comment_date, approve) VALUES(%s, %s, %s, %s, %s, %s, %s)"
    result = cur.execute(query, [post_id, user_id, content, parent_comment, vister_name, comment_date, approve])
    return result;

def get_All_Comment_By_Post(postid):
    cur = connections['default'].cursor()
    query = "SELECT * FROM comment c WHERE post_id = %s"
    cur.execute(query, [postid])
    result = Common.dictfetchall(cur)
    return result;
