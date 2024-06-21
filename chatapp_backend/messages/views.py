from django.shortcuts import render

# Create your views here.
from django.shortcuts import render
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt
from .models import Message
from users.models import User
import json

@csrf_exempt
def send_message(request):
    if request.method == 'POST':
        data = json.loads(request.body)
        sender = User.objects.get(id=data['sender_id'])
        receiver = User.objects.get(id=data['receiver_id'])
        content = data['content']
        message = Message.objects.create(sender=sender, receiver=receiver, content=content)
        return JsonResponse({'message': 'Message sent successfully'})

def get_messages(request, user_id):
    user = User.objects.get(id=user_id)
    messages = Message.objects.filter(receiver=user).values()
    return JsonResponse({'messages': list(messages)})
