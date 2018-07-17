from django.db import models

# Create your models here.
class Department(models.Model):
    title = models.CharField(max_length=32)
    num_of_people = models.IntegerField(default=0)
    date = models.DateField(auto_now_add=True)

    def __str__(self):
        return self.title