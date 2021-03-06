# Generated by Django 3.2.7 on 2021-10-06 11:24

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('cattle', '0001_initial'),
        ('income_farm', '0001_initial'),
        ('farm', '0001_initial'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='farm',
            name='cattles',
        ),
        migrations.AddField(
            model_name='farm',
            name='cattles',
            field=models.ManyToManyField(to='cattle.Cattle'),
        ),
        migrations.RemoveField(
            model_name='farm',
            name='incomes_farm',
        ),
        migrations.AddField(
            model_name='farm',
            name='incomes_farm',
            field=models.ManyToManyField(to='income_farm.Income'),
        ),
    ]
