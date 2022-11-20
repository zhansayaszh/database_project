from django import urls

from . import views

urlpatterns = [
    urls.path('countries/', views.CountryListCreateView.as_view()),
    urls.path('countries/<str:name>/', views.CountryCRUDView.as_view()),
    urls.path('diseasetype/', views.DiseaseTypeListCreateView.as_view()),
    urls.path('diseasetype/<int:disease_type_id>/', views.DiseaseTypeCRUDView.as_view()),
    urls.path('disease/', views.DiseaseListCreateView.as_view()),
    urls.path('disease/<str:disease_code>/', views.DiseaseCRUDView.as_view()),
    urls.path('users/', views.UsersListCreateView.as_view()),
    urls.path('users/<str:email>/', views.UsersCRUDView.as_view()),
    urls.path('doctor/', views.DoctorListCreateView.as_view()),
    urls.path('doctor/<str:email>/', views.DoctorCRUDView.as_view()),
    urls.path('public_servant/', views.PublicServantListCreateView.as_view()),
    urls.path('public_servant/<str:email>/', views.PublicServantCRUDView.as_view()),
    urls.path('specialize/', views.SpecializeListCreateView.as_view()),
    urls.path('specialize/<int:specialize_disease_id>/', views.SpecializeCRUDView.as_view()),
    urls.path('discover/', views.DiscoverListCreateView.as_view()),
    urls.path('discover/<str:country_name>/', views.DiscoverCRUDView.as_view()),
    urls.path('record/', views.RecordListCreateView.as_view()),
    urls.path('record/<str:email>/', views.RecordListCreateView.as_view()),
]
