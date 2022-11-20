from django.db import models


class DiseaseType(models.Model):
    disease_type_id = models.BigAutoField(primary_key=True)
    description = models.CharField(max_length=140)


class Country(models.Model):
    name = models.CharField(max_length=50, primary_key=True)
    population = models.BigIntegerField()


class Disease(models.Model):
    disease_code = models.CharField(max_length=50, unique=True)
    pathogen = models.CharField(max_length=20)
    description = models.CharField(max_length=140)
    disease_type = models.ForeignKey('DiseaseType', on_delete=models.CASCADE, related_name='disease_type')


class Discover(models.Model):
    country_name = models.ForeignKey('Country', on_delete=models.CASCADE)
    disease_code = models.ForeignKey('Disease', on_delete=models.CASCADE)
    discovered = models.DateField()


class Users(models.Model):
    email = models.EmailField()
    name = models.CharField(max_length=30)
    surname = models.CharField(max_length=40)
    salary = models.PositiveIntegerField()
    phone = models.CharField(max_length=20)
    country_name = models.ForeignKey('Country', on_delete=models.CASCADE)


class PublicServant(models.Model):
    email = models.ForeignKey('Users', on_delete=models.CASCADE)
    department = models.CharField(max_length=50)


class Doctor(models.Model):
    email = models.ForeignKey('Users', on_delete=models.CASCADE)
    degree = models.CharField(max_length=20)


class Specialize(models.Model):
    disease_type_id = models.ForeignKey('DiseaseType', on_delete=models.CASCADE)
    email = models.ForeignKey('Doctor', on_delete=models.CASCADE)


class Record(models.Model):
    email = models.ForeignKey('PublicServant', on_delete=models.CASCADE)
    country_name = models.ForeignKey('Country', on_delete=models.CASCADE)
    disease_code = models.ForeignKey('Disease', on_delete=models.CASCADE)
    total_death = models.PositiveIntegerField()
    total_patients = models.PositiveIntegerField()
