FROM python:3.6 
ENV PYTHONUNBUFFERED 1 

RUN mkdir /code
WORKDIR /code

RUN pip install --upgrade pip 
RUN pip install Flask

RUN apt-get install -y git
RUN git clone https://github.com/silshack/flaskr.git
WORKDIR flaskr
RUN python flaskr.py

EXPOSE 5000 
