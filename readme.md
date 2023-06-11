# Code example test

### Links:
[Install docker](https://docs.docker.com/engine/install/ubuntu/)

[Post install tips](https://docs.docker.com/engine/install/linux-postinstall/)

[Docker compose](https://docs.docker.com/compose/gettingstarted/)

[Networking in docker compose](https://docs.docker.com/compose/networking/)


### Commands:
**if docker is not in sudo group may need to run as sudo**

`docker compose up`

`docker compose up -d`

`docker compose down`

`docker volume rm dockercompose-dbdockerfile_postgres-data`


### Debugging:
**how to exec into containers**

`docker exec -it dockercompose-dbdockerfile-db-1 psql -U postgres test`

`docker exec -it dockercompose-dbdockerfile-dockerfile-1 bash`

From inside this container you should be able to connect to the db running in the other container

`psql -h db -p 5432 -U postgres -d test`

password will be prompted, this can be seen in the docker compose file

Ensure the docker container is rebuilt (if you make any changes)

`docker build . -t dockercompose-dbdockerfile-dockerfile`


### Code to connect to db:

The idea is that this setup should allow you to easily further develop code that performs SQL to get data out of the database

An example for python, connecting to the db:

`python3 test.py`

You could also potentially make the code run automatically when the docker image starts up