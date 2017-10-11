FROM python:2.7-alpine

RUN mkdir /app
COPY . /app/
WORKDIR /app
RUN pip install -r requirements.txt
RUN apk add --update-cache ca-certificates
RUN chmod +x /app/add_local_CA.sh && /app/add_local_CA.sh
ENTRYPOINT ["python", "/app/es2csv.py"]

