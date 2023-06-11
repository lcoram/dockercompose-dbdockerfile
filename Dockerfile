FROM ubuntu:22.04

# install all dependencies that are needed 
RUN apt update -y 
RUN apt install postgresql-client -y
RUN apt install libpq-dev -y

# further dependencies may be needed for your coding language of choice...
RUN apt install python3-pip -y 
RUN pip3 install psycopg2

# copy file into container
COPY ./code /