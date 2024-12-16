FROM python:3.5-buster

RUN apt update && apt install -y \
    build-essential libhdf5-dev pkg-config

WORKDIR /app

COPY . /app

RUN pip install -r requirements.txt

RUN make

CMD ["python", "main.py", "periodic_system_1.in"]
