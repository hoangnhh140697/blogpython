from django.urls import path
from . import views

urlpatterns = [
    path('', views.index, name='share'),
    path('details/<int:id>/', views.details, name='details')
]