from datetime import datetime
from django.http import HttpResponse
from django.shortcuts import render

from meetings.models import Meeting, Room

# Create your views here.
def welcome(request):
    return render(request, "website/welcome.html",
                  {"meetings" : Meeting.objects.all(),
                   "rooms": Room.objects.all()})

def date(request):
    return HttpResponse("The time is: " + str(datetime.now()))

def about_me(request):
    return HttpResponse("My name is Nathan Galley and I <i>like to code.</i>")
