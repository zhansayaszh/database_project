from rest_framework import viewsets
from rest_framework import generics
from rest_framework import mixins
from rest_framework import response
from rest_framework import request as rq

from . import models
from . import serializers


class CountryCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Country.objects.all()
    serializer_class = serializers.CountrySerializer
    lookup_field = 'name'


class CountryListCreateView(generics.ListCreateAPIView):
    queryset = models.Country.objects.all()
    serializer_class = serializers.CountrySerializer


class DiseaseTypeCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.DiseaseType.objects.all()
    serializer_class = serializers.DiseaseTypeSerializer
    lookup_field = 'disease_type_id'


class DiseaseTypeListCreateView(generics.ListCreateAPIView):
    queryset = models.DiseaseType.objects.all()
    serializer_class = serializers.DiseaseTypeSerializer

class DiseaseCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Disease.objects.all()
    serializer_class = serializers.DiseaseSerializer
    lookup_field = 'disease_code'

class DiseaseListCreateView(generics.ListCreateAPIView):
    queryset = models.Disease.objects.all()
    serializer_class = serializers.DiseaseSerializer

class UsersCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Users.objects.all()
    serializer_class = serializers.UsersSerializer
    lookup_field = 'email'

class UsersListCreateView(generics.ListCreateAPIView):
    queryset = models.Users.objects.all()
    serializer_class = serializers.UsersSerializer

class DoctorCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Doctor.objects.all()
    serializer_class = serializers.DoctorSerializer
    lookup_field = 'email'

class DoctorListCreateView(generics.ListCreateAPIView):
    queryset = models.Doctor.objects.all()
    serializer_class = serializers.DoctorSerializer

class PublicServantCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.PublicServant.objects.all()
    serializer_class = serializers.PublicServantSerializer
    lookup_field = 'email'

class PublicServantListCreateView(generics.ListCreateAPIView):
    queryset = models.PublicServant.objects.all()
    serializer_class = serializers.PublicServantSerializer

class SpecializeCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Specialize.objects.all()
    serializer_class = serializers.SpecializeSerializer
    lookup_field = 'specialize_disease_id'

class SpecializeListCreateView(generics.ListCreateAPIView):
    queryset = models.Specialize.objects.all()
    serializer_class = serializers.SpecializeSerializer

class DiscoverCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Discover.objects.all()
    serializer_class = serializers.DiscoverSerializer
    lookup_field = 'country_name'

class DiscoverListCreateView(generics.ListCreateAPIView):
    queryset = models.Discover.objects.all()
    serializer_class = serializers.DiscoverSerializer

class RecordCRUDView(generics.RetrieveUpdateDestroyAPIView):
    queryset = models.Record.objects.all()
    serializer_class = serializers.RecordSerializer
    lookup_field = 'email'

class RecordListCreateView(generics.ListCreateAPIView):
    queryset = models.Record.objects.all()
    serializer_class = serializers.RecordSerializer

class RecordView(viewsets.ModelViewSet):
    queryset = models.Record.objects.all()
    serializer_class = serializers.RecordSerializer

    def list(self, request,  *args, **kwargs):
        # Note the use of `get_queryset()` instead of `self.queryset`
        queryset = self.get_queryset()
        serializer = self.get_serializer(queryset, many=True)
        # serializer = serializers.DiseaseSerializer(queryset, many=True)
        return response.Response({
            'items': serializer.data
        })

# class GenericAPIView(generics.GenericAPIView, mixins.ListModelMixin):
#
#     queryset = Article.objects.all()
#     serializer_class = ArticleSerializer
#
#     def get (self,request):
#         return self.list(request)





