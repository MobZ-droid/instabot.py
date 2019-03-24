FROM python:3.7.2-alpine3.9

RUN apk update && rm -rf /var/cache/apk/*

WORKDIR /app

RUN python3 -m pip install instabot-py && rm -rf /app/*

VOLUME ["/app"]

CMD [ "python3", "__main__.py" ]
