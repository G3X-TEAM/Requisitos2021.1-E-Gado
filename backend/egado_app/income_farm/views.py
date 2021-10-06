from django.shortcuts import render

from django.shortcuts import render
from rest_framework.generics import ListCreateAPIView, RetrieveUpdateDestroyAPIView
from .serializers import IncomeSerializer
from .models import Income
from rest_framework import permissions
from .permissions import IsOwner
# Create your views here.

class IncomeListAPIView(ListCreateAPIView):
    serializer_class = IncomeSerializer
    queryset = Income.objects.all()
    permissions = (permissions.IsAuthenticated,)

    def perform_create(self, serializer):
        return serializer.save(owner = self.request.user)

    def get_queryset(self):
        return self.queryset.filter(owner=self.request.user)
    
class IncomeDetailAPIView(RetrieveUpdateDestroyAPIView):
    serializer_class = IncomeSerializer
    query_set = Income.objects.all()
    permissions = (permissions.IsAuthenticated, IsOwner,)
    lookup_fields = "id"

    def perform_create(self, serializer):
        return serializer.save(owner = self.request.user)

    def get_queryset(self):
        return self.queryset.filter(owner=self.request.user)