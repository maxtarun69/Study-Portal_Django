import os
from django.http import HttpResponse
from django.shortcuts import redirect, render
from .models import ContactMessage, Course
from .forms import CourseForm
from django.contrib.auth import logout
import datetime , random
from Studyportalapp.models import  Adminlog, Studentregister # type: ignore
from django.shortcuts import render, get_object_or_404


# Create your views here.
def home(request):
    return render(request,'index.html')


def admin(request):
    return render(request,'adminlogin.html')

def adminlogin(request):
    if request.method == 'POST':
        un = request.POST['uname']
        ps = request.POST['passw']
        found = Adminlog.objects.filter(uname=un, password=ps).first()

        if found:
            request.session['un1'] = un
            request.session['ps1'] = ps
            return render(request, 'cpanel/admindashboard.html',)
        else:
            return render(request, 'adminlogin.html', {'error': 'password not match'})
    else:
        return render(request, 'adminlogin.html')
    
def mylogout(request):
    logout(request)
    return render (request,'cpanel/logout.html')

def resetpass(request):
    return render(request,'cpanel/resetpass.html')

def resetupdate(request):
    nps=request.POST['nps']
    cps=request.POST['cps']
    un1=request.session['un1']
    if nps == cps :
        Adminlog.objects.filter(uname=un1).update(password=nps)
        return render (request,'cpanel/logout.html')
    else :
        return HttpResponse('cofirm password not match')
    

def addcourse(request):
    return render(request,'cpanel/addcource.html')

def save_course(request):
    if request.method == 'POST':
        form = CourseForm(request.POST, request.FILES)
        if form.is_valid():
            form.save()
            return render(request,'cpanel/addcource.html')
    else:
        form = CourseForm()
    return render(request, 'cpanel/addcource.html', {'form': form})

# views.py
def view_cource(request):
    courses = Course.objects.all()
    return render(request, 'S_panel/view_cource.html', {'courses': courses})

    
def contantview(request):
    courses = Course.objects.all()
    return render(request,'cpanel/viewcontant.html',{'cources':courses})

def contantview(request):
    courses = Course.objects.all()
    return render(request, 'cpanel/viewcontant.html', {'courses': courses})

def editbyid(request,id1):
    mydata=Course.objects.filter(id=id1).all()
    return render(request,'cpanel/edit_content.html',{'data':mydata})

def C_update(request):
    id1=request.POST['id']
    title1=request.POST['title']
    content1=request.POST['content']
    video_link1=request.POST['video_link']
    Course.objects.filter(id=id1).update(title=title1,content=content1,video_link=video_link1)
    return redirect('/viewcontant')

def delbyid(request,id1):
    Course.objects.get(id=id1).delete()
    return redirect('/viewcontant')

def studentregister(request):
    return render(request,'s_registration.html')

def studentregisteration(request):
    sname2 = request.POST['sname']
    gender2 = request.POST['gender']
    contact2 = request.POST['contact']
    email2 = request.POST['email']
    img3 = request.FILES.get('src', None)
    address2 = request.POST['address']
    term2 = request.POST['terms']
    dt1=datetime.datetime.now()
    ps1=random.randint(10000,99999)

    Studentregister( sname=sname2,gender=gender2,contact=contact2,email=email2,passw=ps1,image=img3,address=address2,term=term2, dt=dt1).save()
    return render(request,'res.html',{'sname':sname2,'email':email2,'ps':ps1})

def Update_Profile(request, id1):
    item = get_object_or_404(Studentregister, id=id1)
    return render(request, 'S_panel/Update_Profile.html', {'data': item})

def Update_student(request):
    id2=request.POST['id']
    sname2 = request.POST['sname']
    gender2 = request.POST['gender']
    contact2 = request.POST['contact']
    email2 = request.POST['email']
    img3 = request.FILES.get('src', None)
    address2 = request.POST['address']
    term2 = request.POST['terms']
    
    Studentregister.objects.filter(id=id2).update( sname=sname2,gender=gender2,contact=contact2,email=email2,image=img3,address=address2,term=term2,)
    return redirect('/viewpro')

def resid(request):
    mydata=Studentregister.objects.all()
    return render(request,'res.html',{'data':mydata})

def studentsingin(request):
    return render(request,'s_singn_in.html')

def studentdash(request):
    em=request.POST['uname']
    ps=request.POST['passw']
    
    found=Studentregister.objects.filter(email=em,passw=ps).first()

    if found:
        request.session['em1']=em
        request.session['ps1']=ps
        return render(request,'S_panel/S_dashboard.html')
    else:
        return render(request,'s_singn_in.html' ) 
    
def S_out(request):
    logout(request)
    return render (request,'S_panel/S_singout.html')

def sresetpsw(request):
    return render(request,'S_panel/S_reset.html')

def updatepassw(request):
    nps=request.POST['nps']
    cps=request.POST['cps']
    un1=request.session['un1']
    if nps == cps :
        Studentregister.objects.filter(email=un1).update(passw=nps)
        return render (request,'S_panel/S_singout.html')
    else :
        return HttpResponse('cofirm password not match')

def S_view(request):
    email1=request.session['em1']
    mydata=Studentregister.objects.filter(email=email1).all()
    return render(request,'S_panel/view_profile.html',{'data':mydata})


def S_registred(request):
    mydata=Studentregister.objects.all()
    return render(request,'viewstudent.html',{'data':mydata})


def about_us(request):
    return render(request,'S_panel/About.html')

def send_message(request):
    name2 = request.POST['name']
    email2 = request.POST['email']
    message2 = request.POST['message']
    created_at1=datetime.datetime.now()

    ContactMessage( name=name2,email=email2,message=message2,created_at=created_at1).save()
    return render(request,'thankyou.html',{'sname':name2,'email':email2,'message':message2}) 

def view_inbox(request):
    return render(request,'cpanel/inbox.html')

def view_inbox(request):
    messages = ContactMessage.objects.all()
    return render(request,'cpanel/inbox.html',{'message':messages})

def delmessagebyid(request,id2):
    Course.objects.get(id=id2).delete()
    return redirect('/inbox')
