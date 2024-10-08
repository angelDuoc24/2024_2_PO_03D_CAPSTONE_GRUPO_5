from django.contrib import admin
from .models import Cliente, Empleado, Categorias, Producto, Carrito, Pedido, Orden_de_compra, Reporte, Pago
# Register your models here.

admin.site.register(Cliente)
admin.site.register(Empleado)
admin.site.register(Categorias)
admin.site.register(Producto)
admin.site.register(Carrito)
admin.site.register(Pedido)
admin.site.register(Orden_de_compra)
admin.site.register(Reporte)
admin.site.register(Pago)