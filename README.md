# Flipr DevOps Coding task

Clone this repo by
```bash
git clone https://github.com/goofynugtz/Flipr-notesAPI-task.git
```
Create a virtual environment for running it locally without docker for debugging/dev
```bash
virtualenv venv && pip install -r requirements.txt
```

To start server  
(Windows)
```bash
docker compose build && docker compose up
```
(Linux)
```bash
docker-compose build && docker-compose up
```

The application supports CRUD operations at the following endpoints  
**GET:** All notes: <http://127.0.0.1:8000/api/>  
**GET:** Note by id: <http://127.0.0.1:8000/api/primary_key/>  
**POST:** Create new: <http://127.0.0.1:8000/api/new/>  
**DELETE:** Delete by id: <http://127.0.0.1:8000/api/primary_key/delete/>  
**PUT:** Update by id: <http://127.0.0.1:8000/api/primary_key/update/>  

Check logs  
```bash
docker logs [container_id]
```