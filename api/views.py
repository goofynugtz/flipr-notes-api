from rest_framework.decorators import api_view
from rest_framework.response import Response
from rest_framework import status
from .serializers import NoteSerializer
from .models import Note


@api_view(['GET'])
def getAllNotes(request):
  notes = Note.objects.all()
  serializer = NoteSerializer(notes, many=True)
  return Response(serializer.data, status=status.HTTP_200_OK)


@api_view(['GET'])
def getNote(request, primary_key):
  note = Note.objects.get(id=primary_key)
  serializer = NoteSerializer(note, many=False)
  return Response(serializer.data, status=status.HTTP_200_OK)


@api_view(['POST'])
def createNote(request):
  data = request.data
  note = Note.objects.create(
    title = data['title'],
    description = data['description'],
  )
  serializer = NoteSerializer(note, many=False)
  if (serializer.is_valid()):
    serializer.save()
  return Response(serializer.data, status=status.HTTP_201_CREATED)


@api_view(['PUT'])
def updateNote(request, primary_key):
  data = request.data
  note = Note.objects.get(id=primary_key)
  serializer = NoteSerializer(instance=note, data=data)
  if (serializer.is_valid()):
    serializer.save()
  return Response(serializer.data, status=status.HTTP_202_ACCEPTED)


@api_view(['DELETE'])
def deleteNote(request, primary_key):
  note = Note.objects.get(id=primary_key)
  note.delete()
  return Response("Note deleted", status=status.HTTP_202_ACCEPTED)

