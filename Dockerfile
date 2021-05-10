FROM python:3.8-slim-buster
RUN apt-get update \
&& apt-get install gcc -y \
&& apt-get clean
COPY . /app
WORKDIR /app
RUN pip install -r requirements.txt
ENTRYPOINT ["python"]
CMD ["app.py"]
