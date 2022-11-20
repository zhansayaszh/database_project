from rest_framework import serializers

from . import models


class CountrySerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Country
        fields = '__all__'
        lookup_field = 'name'


class DiseaseTypeSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.DiseaseType
        fields = '__all__'


class DiseaseSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Disease
        fields = '__all__'


class UsersSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Users
        fields = '__all__'


class DoctorSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Doctor
        fields = '__all__'


class PublicServantSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.PublicServant
        fields = '__all__'


class SpecializeSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Specialize
        fields = '__all__'


class DiscoverSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Discover
        fields = '__all__'


class RecordSerializer(serializers.ModelSerializer):
    class Meta:
        model = models.Record
        fields = '__all__'
