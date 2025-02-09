from django.db import models

# Create your models here.
from django.contrib.auth.models import AbstractUser
from django.db import models

class User(AbstractUser):
    phone_number = models.CharField(max_length=15, unique=True)
    is_verified = models.BooleanField(default=False)

    def __str__(self):
        return self.phone_number

