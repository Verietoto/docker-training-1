FROM python:3.9.6-slim-buster

WORKDIR /python-docker

COPY . .
RUN pip install -r requirements.txt

COPY . .

EXPOSE 8080

CMD [ "python3", "-m" , "flask", "run", "--host=0.0.0.0"]
