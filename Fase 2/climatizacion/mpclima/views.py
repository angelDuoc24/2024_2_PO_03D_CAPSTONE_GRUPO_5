from django.shortcuts import render, redirect
from django.http import HttpResponse
from rest_framework import viewsets
from .serializers import ProductoSerializer, EmpleadoSerializer, CategoriasSerializer
from .models import Producto, Empleado, Categorias

from django.contrib.auth.models import User #importaciones login y registro user
from django.contrib.auth import authenticate, login
from django.contrib import messages

from django.contrib.auth.decorators import user_passes_test #importacion agregar productos


# Create your views here.
def homeView(request):
    return render(request, 'home.html')

def caruselView(request):
    return render(request, 'carusel.html')


def pruebaView(request):
    return render(request, 'prueba.html')

def chat(request):
    return render(request, 'chat.html')

def serviciosView(request):
    return render(request, 'servicios.html')

def contactanosView(request):
    return render(request, 'contactanos.html')

def quiensomoView(request):
    return render(request, 'quiensomo.html')

def loginView(request):
    return render(request, 'login.html')

def productosView(request):
    return render(request, 'productos.html')


#------------------INICIO SERIALIZERS------------------------

class ProductoViewSet(viewsets.ModelViewSet):
    queryset = Producto.objects.all().order_by('id_producto')
    serializer_class = ProductoSerializer

class EmpleadoViewSet(viewsets.ModelViewSet):
    queryset = Empleado.objects.all().order_by('id_empleado')
    serializer_class = EmpleadoSerializer
    
class CategoriasViewSet(viewsets.ModelViewSet):
    queryset = Categorias.objects.all().order_by('id_categoria')
    serializer_class = CategoriasSerializer
    
    
#-------------------REGISTRO USUARIO----------------------

def registroView(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        password_confirm = request.POST['password_confirm']
        email = request.POST['email']
        
        if password == password_confirm:
            if User.objects.filter(username=username).exists():
                messages.error(request, 'El usuario ya existe.')
            else:
                user = User.objects.create_user(username=username, password=password, email=email)
                user.save()
                messages.success(request, 'Usuario registrado con éxito.')
                return redirect('login')  # Redirige al login
        else:
            messages.error(request, 'Las contraseñas no coinciden.')
    return render(request, 'registro.html')


#----------------------------------LOGIN-------------------------------

def login(request):
    if request.method == 'POST':
        username = request.POST['username']
        password = request.POST['password']
        user = authenticate(request, username=username, password=password)
        if user is not None:
            login(request, user)
            messages.success(request, 'Inicio de sesión exitoso.')
            return redirect('chat')  # Redirige al index o a donde quieras
        else:
            messages.error(request, 'Usuario o contraseña incorrectos.')
    return render(request, 'login.html')


#----------------VERIFICAR SI EL USUARIO ES ADMIN------------------------

def es_admin(user):
    return user.is_superuser

#--------------------AGREGAR PRODUCTOS COMO ADMIN------------------------------

@user_passes_test(es_admin)
def agregar_producto(request):
    if request.method =='POST':
        nombre = request.POST['nombre']
        descripcion = request.POST['descripcion']
        precio = request.POST['precio']
        stock = request.POST['stock']
        potencia = request.POST['potencia']
        categoria_id = request.POST['categoria']
        categoria = Categorias.objects.get(id_categoria=categoria_id)
        
        nuevo_producto = Producto(
            nombre_producto=nombre,
            descripcion_producto=descripcion,
            precio=precio,
            stock=stock,
            potencia=potencia,
            categoria=categoria
        )
        nuevo_producto.save()
        messages.success(request, 'Producto agregado con éxito.')
        return redirect('productos') #Nos redirige a la lista de productos

    categorias = Categorias.objects.all()
    return render(request, 'agregar_producto.html', {'categorias': categorias})

def lista_productos(request):
    productos = Producto.objects.all()
    return render(request, 'productos.html', {'productos': productos})