FROM alpine
RUN apk add cmake gcc make

WORKDIR /app

COPY . /app
