from django.shortcuts import render
from django.http import HttpResponse

import MySQLdb


# Create your views here.

def selectuser():
    db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="",  # your password
                     db="myblog")        # name of the data base

    cur = db.cursor()
    cur.execute("SELECT * FROM user")
    result = cur.fetchall()
    db.close()
    return result

    

def index(request):
    db = MySQLdb.connect(host="localhost",    # your host, usually localhost
                     user="root",         # your username
                     passwd="",  # your password
                     db="myblog")        # name of the data base

    cur = db.cursor()
    cur.execute("SELECT * FROM user")
    d = cur.fetchall()
    
    db.close()

    return render(request, 'pages/home.html', {'d': d})

