FROM python:3.10.4

ENV PYTHONUNBUFFERED = 1

WORKDIR /app

ADD . /app 

COPY ./requirements.txt /app/requirements.txt

RUN  pip install --upgrade pip

RUN pip install -r requirements.txt

COPY . /app

# EXPOSE 8000

# CMD ["python3", "manage.py", "runsever"]
