FROM python:3.6
LABEL maintainer="lorenz.vanthillo@gmail.com"
WORKDIR /app

COPY requirements.txt ./
RUN pip install -r requirements.txt

COPY . ./
EXPOSE 8080
ENTRYPOINT ["python"]
CMD ["app/app.py"]
