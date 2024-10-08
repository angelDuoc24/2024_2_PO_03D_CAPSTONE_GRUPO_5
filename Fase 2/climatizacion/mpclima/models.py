from django.db import models

class Cliente (models.Model):
    id_cliente = models.BigIntegerField(primary_key=True)
    nombre = models.CharField(max_length=60)
    apellido_p = models.CharField(max_length=60)
    apellido_m = models.CharField(max_length=60)
    telefono = models.IntegerField()
    comuna = models.CharField(max_length=40)
    direccion = models.CharField(max_length=60)
    fecha_nacimiento = models.DateTimeField(auto_now_add=True)
    rut = models.CharField(max_length=9)
    correo = models.EmailField()
    def __str__(self):
        return self.nombre


class Empleado (models.Model):
    id_empleado = models.BigIntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)
    apellido_paterno = models.CharField(max_length=60)
    apellido_materno = models.CharField(max_length=60)
    rut = models.CharField(max_length=9)
    correo = models.EmailField()
    cargo = models.CharField(max_length=50)
    def __str__(self):
        return self.nombre


class Categorias(models.Model):
    id_categoria = models.BigIntegerField(primary_key=True)
    nombre = models.CharField(max_length=50)
    def __str__(self):
        return self.nombre

class Producto(models.Model):
    id_producto = models.BigIntegerField(primary_key=True)
    categoria = models.ForeignKey(Categorias, on_delete=models.CASCADE)
    nombre_producto = models.CharField(max_length=100)
    descripcion_producto = models.TextField()
    precio = models.IntegerField()
    precio_compra = models.IntegerField()
    stock = models.IntegerField()
    potencia = models.CharField(max_length=100)
    imagen = models.ImageField(upload_to='Img', null=True)
    def __str__(self):
        return self.nombre_producto

class Carrito(models.Model):
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)
    producto = models.ForeignKey(Producto, on_delete=models.CASCADE)
    cantidad = models.IntegerField()
    def __str__(self):
        return self.producto

class Pedido(models.Model):
    id_pedido = models.CharField(max_length=200)
    empleado = models.ForeignKey(Empleado, on_delete=models.CASCADE)
    estado = models.CharField(max_length=20, choices=(('PREPARANDO', 'preparando'),('EN CAMINO','en camino'),('ENTREGADO','entregado'),('RECHAZADO','Rechazado')),default='PREPARANDO')
    calificacion = models.IntegerField() 
    def __str__(self):
        return self.id_pedido

class Orden_de_compra(models.Model):
    id_orden = models.CharField(max_length=200)
    cliente = models.ForeignKey(Cliente, on_delete=models.CASCADE)
    id_pedido = models.ForeignKey(Pedido, on_delete=models.CASCADE) 
    fecha = models.DateTimeField(auto_now_add=True)
    total = models.IntegerField()
    sitio_web = models.CharField(max_length=25)
    def __str__(self):
        return self.id_orden

class Reporte(models.Model):
    id_reporte = models.CharField(max_length=200)
    id_orden = models.ForeignKey(Orden_de_compra, on_delete=models.CASCADE)
    fecha = models.DateTimeField(auto_now_add=True)
    documento = models.IntegerField()
    def __str__(self):
        return self.id_reporte


class Pago(models.Model):
    pedido = models.ForeignKey(Pedido, on_delete=models.CASCADE)
    #confirmado = models.BooleanField(default=False)
    fecha = models.DateTimeField(auto_now_add=True)
    metodo_pago = models.CharField(max_length=20, choices=(('TARJETA','Tarjeta de crédito'),('TRANSFERENCIA','Transferencia')),default='TARJETA')
    monto = models.IntegerField()
    def __str__(self):
        return self.pedido
