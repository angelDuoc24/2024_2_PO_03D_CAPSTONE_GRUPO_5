from django.contrib import admin
from django.urls import path, include
from .import views
from rest_framework import routers

router = routers.DefaultRouter()
router.register(r'Productos', views.ProductoViewSet)
router.register(r'Empleado', views.EmpleadoViewSet)
router.register(r'Categorias', views.CategoriasViewSet)

urlpatterns = [
    path('', include(router.urls)),
    path('chat', views.chat, name="chat"),
    path('home',views.homeView, name="home"),
    path('carusel', views.caruselView, name="carusel"),
    path('prueba', views.pruebaView, name="prueba"),
    path('servicios', views.serviciosView, name="servicios"),
    path('contactanos', views.contactanosView, name="contactanos"),
    path('quiensomo', views.quiensomoView, name="quiensomo"),
    path('login', views.loginView, name="login"),
    path('productos', views.productosView, name="productos"),
    path('registro', views.registroView, name="registro"),
    path('api-auth/', include('rest_framework.urls', namespace='rest_framework')),
    path('argegar-producto/', views.agregar_producto, name='agregar_producto')
]
