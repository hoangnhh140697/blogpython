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

        if not name or not phone or not email or not subject or not status:
            result = 0
            if result == 1:
                message = 'Gửi thành công!'
            else:
                message = 'Gửi thất bại. Vui lòng kiểm tra lại thông tin!'
            return render(request, 'pages/contact.html', {'notify': message})


        result = C_Contact.insert_Contact(name, phone, email, subject, content, status, date)
        
        if result == 1:
            message = 'Gửi thành công!'
        else:
            message = 'Gửi thất bại!'




    return render(request, 'pages/contact.html', {'notify': message})