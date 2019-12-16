from django.db import connections
from home.common import Common

def insert_Contact(name, phone, email, subject, mess, status, date_sended):
    cur = connections['default'].cursor()
    query = "INSERT INTO contact(contact_name, contact_phone, contact_email, subject, message, status, date_sended) VALUES (%s, %s, %s, %s, %s, %s, %s)"
    result = cur.execute(query, [name, phone, email, subject, mess, status, date_sended])
    return result