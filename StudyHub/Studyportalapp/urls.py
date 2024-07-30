
from django.urls import path, include
from.import views

urlpatterns = [
    path('', views.home , name='home page'),
    path('mycource', views.view_cource, name='cource view page'),
    path('admin', views.admin, name='admin page'),
    path('chkadmin', views.adminlogin , name=' admin login page'),
    path('mylogout', views.mylogout , name=' my logout page'),
    path('rpass', views.resetpass, name='admin reset password page'),
    path('resetupdate', views.resetupdate, name='admin reset update password page'),
    path('addcouse',views.addcourse, name = 'add cource'),
    path('viewcontant',views.contantview, name='my contants'),
    path('save',views.save_course, name = 'save course'),
    path('delbyid/<id1>', views.delbyid , name='delate cource title data'),
    path('editbyid/<id1>', views.editbyid , name='editbyid cource title contents data'),
    path('C_update', views.C_update , name='Update cource  data'),
    path('sregister',views.studentregister,name= "Student Registration Form"),
    path('regist',views.studentregisteration,name= "Student Registration Form"),
    path('resid',views.resid, name= 'id and password'),
    path('s_signin',views.studentsingin, name= 'student registration panel'),
    path('S_dash',views.studentdash, name= 'student Dashboard panel'),
    path('S_signout',views.S_out, name='Student Signout password'),
    path('S_reset',views.sresetpsw, name= 'Student Reset Password'),
    path('uppsw',views.updatepassw, name = 'Student Update Password'),
    path('S_view',views. S_registred, name="View Student Information"),
    path('viewpro',views.S_view, name = 'View Student Profile'),
    path('Update_Profile/<id1>/', views.Update_Profile, name='Update_Profile'),
    path('save_profile',views.Update_student, name='student profile update'),
    path('about',views.about_us, name = 'about us'),
    path('send',views.send_message,name='send massage'),
    path('inbox',views.view_inbox,name='view inbox'),
    path('delmessage/<id1>', views.delmessagebyid, name='delate cource title data'),
    
    
    
]