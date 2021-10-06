# Generated by Django 3.2.7 on 2021-10-06 11:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('farm', '0003_auto_20211006_0828'),
        ('cattle', '0001_initial'),
    ]

    operations = [
        migrations.AddField(
            model_name='cattle',
            name='farm',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, related_name='cattles', to='farm.farm'),
            preserve_default=False,
        ),
    ]
