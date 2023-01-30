FROM python:3.9.16-slim-bullseye
WORKDIR /weather_web_proj
EXPOSE 8081
COPY ./requirements.txt /weather_web_proj
RUN pip install -r requirements.txt
COPY . .
CMD gunicorn --bind 0.0.0.0:8081 webpage:app
