from django.db import models

# Create your models here.

class AuthGroup(models.Model):
    name = models.CharField(unique=True, max_length=150)

    class Meta:
        managed = False
        db_table = 'auth_group'

class AuthGroupPermissions(models.Model):
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)
    permission = models.ForeignKey('AuthPermission', models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_group_permissions'
        unique_together = (('group', 'permission'),)

class AuthPermission(models.Model):
    name = models.CharField(max_length=255)
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING)
    codename = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'auth_permission'
        unique_together = (('content_type', 'codename'),)


class AuthUser(models.Model):
    password = models.CharField(max_length=128)
    last_login = models.DateTimeField(blank=True, null=True)
    is_superuser = models.BooleanField()
    username = models.CharField(unique=True, max_length=150)
    first_name = models.CharField(max_length=150)
    last_name = models.CharField(max_length=150)
    email = models.CharField(max_length=254)
    is_staff = models.BooleanField()
    is_active = models.BooleanField()
    date_joined = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'auth_user'


class AuthUserGroups(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    group = models.ForeignKey(AuthGroup, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_groups'
        unique_together = (('user', 'group'),)


class AuthUserUserPermissions(models.Model):
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)
    permission = models.ForeignKey(AuthPermission, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'auth_user_user_permissions'
        unique_together = (('user', 'permission'),)

class DjangoAdminLog(models.Model):
    action_time = models.DateTimeField()
    object_id = models.TextField(blank=True, null=True)
    object_repr = models.CharField(max_length=200)
    action_flag = models.SmallIntegerField()
    change_message = models.TextField()
    content_type = models.ForeignKey('DjangoContentType', models.DO_NOTHING, blank=True, null=True)
    user = models.ForeignKey(AuthUser, models.DO_NOTHING)

    class Meta:
        managed = False
        db_table = 'django_admin_log'


class DjangoContentType(models.Model):
    app_label = models.CharField(max_length=100)
    model = models.CharField(max_length=100)

    class Meta:
        managed = False
        db_table = 'django_content_type'
        unique_together = (('app_label', 'model'),)


class DjangoMigrations(models.Model):
    app = models.CharField(max_length=255)
    name = models.CharField(max_length=255)
    applied = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_migrations'


class DjangoSession(models.Model):
    session_key = models.CharField(primary_key=True, max_length=40)
    session_data = models.TextField()
    expire_date = models.DateTimeField()

    class Meta:
        managed = False
        db_table = 'django_session'


class Encuesta(models.Model):
    id_encuesta = models.AutoField(primary_key=True)
    nombre_encuesta= models.TextField(blank=True, null=True)
    desc_encuesta= models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Encuesta'

class Usuario(models.Model):
    id_usuario = models.AutoField(primary_key=True)
    nombre_usuario= models.TextField(blank=True, null=True)
    contraseña_usuario= models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Tipo_pregunta'

class Area(models.Model):
    id_area = models.AutoField(primary_key=True)
    enunciado_area= models.TextField(blank=True, null=True)
    estado_area= models.BooleanField(blank=True, null=True)
    id_encuesta = models.ForeignKey(Encuesta, models.DO_NOTHING, db_column='id_encuesta', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Area'

class Tipo_pregunta(models.Model):
    id_tipo_pregunta = models.AutoField(primary_key=True)
    tipo= models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Tipo_pregunta'


class Pregunta(models.Model):
    id_pregunta = models.AutoField(primary_key=True)
    enunciado_pregunta= models.TextField(blank=True, null=True)
    estado_pregunta= models.BooleanField(blank=True, null=True)
    id_tipo_pregunta = models.ForeignKey(Tipo_pregunta, models.DO_NOTHING, db_column='id_tipo_pregunta', blank=True, null=True)
    id_area = models.ForeignKey(Area, models.DO_NOTHING, db_column='id_area', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Pregunta'

class Respuesta(models.Model):
    id_respuesta = models.AutoField(primary_key=True)
    respuesta= models.TextField(blank=True, null=True)
    id_pregunta = models.ForeignKey(Pregunta, models.DO_NOTHING, db_column='id_pregunta', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Respuesta'

class Encuesta_contestada(models.Model):
    id_encuesta_contestada = models.AutoField(primary_key=True)
    fecha_respuesta= models.DateTimeField(blank=True, null=True)
    id_usuario = models.ForeignKey(Usuario, models.DO_NOTHING, db_column='id_usuario', blank=True, null=True)
    id_encuesta = models.ForeignKey(Encuesta, models.DO_NOTHING, db_column='id_encuesta', blank=True, null=True)
    id_respuesta = models.ForeignKey(Respuesta, models.DO_NOTHING, db_column='id_respuesta', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Encuesta_contestada'

class Opcion(models.Model):
    id_opcion = models.AutoField(primary_key=True)
    descripcion_opcion= models.TextField(blank=True, null=True)
    id_pregunta = models.ForeignKey(Pregunta, models.DO_NOTHING, db_column='id_pregunta', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Opcion'

class Persona(models.Model):
    id_persona = models.AutoField(primary_key=True)
    identificacion_persona= models.TextField(blank=True, null=True)
    codigo_persona= models.TextField(blank=True, null=True)
    nombre_persona= models.TextField(blank=True, null=True)
    apellido_persona= models.TextField(blank=True, null=True)
    correo_persona= models.TextField(blank=True, null=True)
    telefono_persona= models.TextField(blank=True, null=True)
    direccion_persona= models.TextField(blank=True, null=True)
    id_usuario = models.ForeignKey(Usuario, models.DO_NOTHING, db_column='id_usuario', blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Persona'


class Rol(models.Model):
    id_rol = models.AutoField(primary_key=True)
    nombre_rol= models.TextField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Rol'

class Rol_persona(models.Model):
    id_rol = models.ForeignKey(Rol, models.DO_NOTHING, db_column='id_rol', blank=True, null=True)
    id_persona = models.ForeignKey(Persona, models.DO_NOTHING, db_column='id_persona', blank=True, null=True)
    estado_rol= models.BooleanField(blank=True, null=True)

    class Meta:
        managed = False
        db_table = 'Rol_persona'



