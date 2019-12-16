from django.urls import path
from . import views

urlpatterns = [
    path('<slug:slug>/<int:id>/', views.index, name='tag')
]