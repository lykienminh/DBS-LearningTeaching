from django.urls import path
from . import views
app_name = 'dkmh'
urlpatterns = [
   path('', views.DKMH),
]