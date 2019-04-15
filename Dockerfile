FROM python:3

WORKDIR /opt/admissions

COPY requirements.txt requirements.txt
RUN pip install -r requirements.txt

COPY app app
COPY admissions-webhook.py config.py boot.sh ./
RUN chmod +x boot.sh

EXPOSE 8080 8443
ENTRYPOINT ["./boot.sh"]
