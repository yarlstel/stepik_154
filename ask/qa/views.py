from django.shortcuts import render
from django.http import Http.Response
# Create your views here.
def test(request, *args, **kwargs):
    return Http.Response('OK')