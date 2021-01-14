FROM python:3.6
LABEL maintainer="lorenz.vanthillo@gmail.com"
COPY requirements.txt /app
WORKDIR /app

RUN pip install -r requirements.txt

COPY . /app
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app/app.py"]
