FROM python:3.6.4-alpine3.6
ENV FLASK_APP=appdocker
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
EXPOSE 5000
CMD [ "flask", "run", "--host=0.0.0.0" ]
