FROM debian:bullseye-slim
RUN mkdir /app
WORKDIR /app
RUN apt update
RUN apt install python3.9/stable python3-pip/stable -y
RUN /usr/bin/pip3 install django
RUN ln -s /usr/bin/python3.9 /usr/bin/python
RUN django-admin startproject mysite
WORKDIR /app/mysite