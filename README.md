# dock-primesui

First start a mysql database :

```bash
docker run -d --name primesdb \
	-e MYSQL_ROOT_PASSWORD=bumblebeeadmin \
	-e MYSQL_USER=optimus \
	-e MYSQL_PASSWORD=bumblebee \
	-e MYSQL_DATABASE=primes \
	mysql:5.7
```

Then starts the primesui application, linked to the previously created database :

```bash
docker run -it -d  \
	-p 127.0.0.1:8888:8080 \
	--name pui \
	--link primesdb:docker_primes_db \
	dacr/dock-primesui
```

Populate the database (by default limited to up 2000000L) : 

```bash
curl http://localhost:8888/primesui/populate/20000
```

And then let's test the API : 

````bash
```
