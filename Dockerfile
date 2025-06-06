FROM python:3.12.11-alpine3.22

COPY src/app.py  .
COPY src/requirement.txt /tmp/requirement.txt

RUN pip install -r /tmp/requirement.txt
CMD [ "python", "app.py"  ]