from django.db import models
from django.shortcuts import render, get_object_or_404, redirect
from django.urls import reverse

# Create your models here.
class Adminlog(models.Model):
    uname=models.CharField(max_length=20,primary_key=True)
    password=models.CharField(max_length=16)
    email=models.CharField(max_length=50)
    class Meta:
        db_table='adminlogin'


class Course(models.Model):
    title = models.CharField(max_length=200)
    content = models.TextField()
    image = models.ImageField(upload_to='course_images/', blank=True, null=True)
    video_link = models.URLField(max_length=200, blank=True, null=True)
    pdf = models.FileField(upload_to='course_pdfs/', blank=True, null=True)

    def __str__(self):
        return self.title        
    

def delete_course(request, course_id):
    course = get_object_or_404(Course, id=course_id)
    if request.method == 'POST':
        course.delete()
        return redirect(reverse('course_list'))  # Assumes you have a URL named 'course_list' for the list view
    return render(request, 'cpanel/delete_confirmation.html', {'course': course})



class Studentregister(models.Model):
    id = models.AutoField(primary_key=True)
    gender = models.CharField(max_length=8)
    sname = models.CharField(max_length=20)
    contact = models.CharField(max_length=10)
    email = models.EmailField(max_length=50)
    passw=models.CharField(max_length=10 , default='')
    address = models.CharField(max_length=100)
    image = models.ImageField(upload_to='upload' , default='')
    term = models.CharField(max_length=10)
    dt = models.CharField(max_length=18 ,default='')
    class Meta:
        db_table="S_registration"


class ContactMessage(models.Model):
    name = models.CharField(max_length=100)
    email = models.EmailField(max_length=50)
    message = models.TextField(max_length=200)
    created_at = models.DateTimeField(max_length=18)

    class Meta:
        db_table="S_contact"