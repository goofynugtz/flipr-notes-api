from django.urls import path
from .views import getAllNotes, getNote, updateNote, deleteNote, createNote

urlpatterns = [
    path('', getAllNotes, name='notes'),
    path('new', createNote, name='new'),
    path('<str:primary_key>/delete', deleteNote, name='delete'),
    path('<str:primary_key>/update', updateNote, name='update'),
    path('<str:primary_key>', getNote, name='note'),
]