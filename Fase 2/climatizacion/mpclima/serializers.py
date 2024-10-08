from rest_framework import serializers
from .models import Producto, Empleado, Categorias

class ProductoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Producto 
        fields = ('id_producto', 'nombre_producto', 'descripcion_producto', 'precio') 
        
class EmpleadoSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Empleado 
        fields = ('id_empleado', 'nombre', 'apellido_paterno', 'apellido_materno', 'rut')
        
class CategoriasSerializer(serializers.HyperlinkedModelSerializer):
    class Meta:
        model = Categorias
        fields = ('id_categoria', 'nombre')