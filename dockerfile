FROM python:3.9.6-slim-buster

RUN apt-get update && apt-get install -y git

WORKDIR /python-docker

COPY . .

RUN pip install -r requirements.txt

ENV FLASK_APP=app.py

EXPOSE 8080

CMD [ "python3", "-m", "flask", "run", "--host=0.0.0.0", "--port=8080" ]
