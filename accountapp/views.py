from django.http import HttpResponse
from django.shortcuts import render

# Create your views here.

def hello_world(request):
    if request.method == 'POST':
        return render(request, 'accountapp/gogo.html',
                      context={'text' : 'HELLO'})
    else:
        return render(request, 'accountapp/gogo.html',
                      context={'text' : 'HI THERE'})