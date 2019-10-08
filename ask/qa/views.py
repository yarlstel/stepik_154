from django.shortcuts import render
from django.conf import  settings
from django.http import HttpResponse

settings.configure(DEBUG=True)

# Create your views here.
def test(request, *args, **kwargs):
    return HttpResponse('OK')