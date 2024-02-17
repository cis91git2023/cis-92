from django.http import HttpResponse

def index(request):
    return HttpResponse("Anthony was here.")
