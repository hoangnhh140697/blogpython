from home.common import C_Post

def dictfetchall(cursor): 
    "Returns all rows from a cursor as a dict" 
    desc = cursor.description 
    return [
            dict(zip([col[0] for col in desc], row)) 
            for row in cursor.fetchall() 
    ]

def dictfetchone(cursor): 
    "Returns all rows from a cursor as a dict" 
    desc = cursor.description
    row = cursor.fetchone()
    rowDict = dict(zip([col[0] for col in desc], row)) 
    return rowDict

def get_full_path(request):
    full_path = ('http', ('', 's')[request.is_secure()], '://', request.META['HTTP_HOST'])
    return ''.join(full_path)
