FROM python:3.12.11-alpine3.22

ADD ./src/app.py  .
ADD ./src/requirement.txt /tmp/requirement.txt

RUN pip install -r /tmp/requirement.txt
CMD [ "python", "app.py"  ]