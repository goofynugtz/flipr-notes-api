# Flipr DevOps Coding task

### API using django-restframework, SQLite database and Docker
Clone this repo by
```bash
git clone https://github.com/goofynugtz/Flipr-notesAPI-task.git
```
Create a virtual environment for running it locally without docker for debugging/dev
```bash
python -m venv venv && pip install -r requirements.txt
```

To start docker container 
```bash
docker-compose build && docker-compose up
```

The application supports CRUD operations at the following endpoints  
<table>
  <thead>
    <tr>
      <th>Method</th>
      <th>Description</th>
      <th>Address</th>
    <tr>
  </thead>
  <tbody>
    <tr>
      <td>GET</td>
      <td>All notes</td>
      <td><a href="http://127.0.0.1:8000/api/">http://127.0.0.1:8000/api/</a></td>
    </tr>
    <tr>
      <td>GET</td>
      <td>Note by id</td>
      <td><a href="http://127.0.0.1:8000/api/1/">http://127.0.0.1:8000/api/[NOTE_ID]/</a></td>
    </tr>
    <tr>
      <td>POST</td>
      <td>Create new</td>
      <td><a href="http://127.0.0.1:8000/new/">http://127.0.0.1:8000/new/</a></td>
    </tr>
    <tr>
      <td>DELETE</td>
      <td>Delete by id</td>
      <td><a href=http://127.0.0.1:8000/api/1/delete/">http://127.0.0.1:8000/api/[NOTE_ID]/delete/</a></td>
    </tr>
    <tr>
      <td>PUT</td>
      <td>Update by id</td>
      <td><a href="http://127.0.0.1:8000/api/1/update/">http://127.0.0.1:8000/api/[NOTE_ID]/update/</a></td>
    </tr>
  </tbody>
</table>  

Check running instances and logs by  
```bash
docker ps
docker logs [container_id]
```