from django.shortcuts import render
import datetime
from home.common import C_Contact
# Create your views here.

def index(request):
    message = None
    if request.method == 'POST':
        name = request.POST['txtName']
        phone = request.POST['txtPhone']
        email = request.POST['txtEmail']
        subject = request.POST['txtSubject']
        content = request.POST['txtMessage']
        status = 0
        date = datetime.date.today()
        result = C_Contact.insert_Contact(name, phone, email, subject, content, status, date)
        
        if result == 1:
            message = 'Gửi thành công!'
        else:
            message = 'Gửi thất bại!'




    return render(request, 'pages/contact.html', {'notify': message})