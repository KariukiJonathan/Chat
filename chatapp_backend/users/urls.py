from django.urls import path
from .views import register, login_view, verify_user

urlpatterns = [
    path('register/', register, name='register'),
    path('login/', login_view, name='login'),
    path('verify/<int:user_id>/', verify_user, name='verify_user'),
]
