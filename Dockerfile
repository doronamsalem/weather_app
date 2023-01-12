FROM python
WORKDIR /weather_web_proj
EXPOSE 8081
COPY ./requirements.txt /weather_web_proj
RUN pip install -r requirements.txt
COPY ./modules ./templates ./webpage.py ./week_days.py ./__init__.py /weather_web_proj
CMD gunicorn --bind 0.0.0.0:8081 webpage:app
