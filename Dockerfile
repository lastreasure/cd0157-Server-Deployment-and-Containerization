FROM python:stretch

WORKDIR /app
COPY . /app

RUN pip install --upgrade pip
COPY ./requirements.txt ./
RUN pip install -r requirements.txt
RUN pip install Flask==2.1.0
RUN Flask==2.1.0

CMD ["gunicorn", "-b", ":8080", "main:APP"]

