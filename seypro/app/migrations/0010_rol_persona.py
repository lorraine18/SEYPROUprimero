# Generated by Django 2.2.12 on 2021-08-17 23:58

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('app', '0009_rol'),
    ]

    operations = [
        migrations.CreateModel(
            name='Rol_persona',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('estado_rol', models.BooleanField(blank=True, null=True)),
            ],
            options={
                'db_table': 'Rol_persona',
                'managed': False,
            },
        ),
    ]
