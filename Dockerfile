FROM alpine:3.11

RUN mkdir -p /opt/app && touch /opt/app/file.epub

ADD epubcheck-4.2.2 /opt/epubcheck

RUN apk add --no-cache openjdk11-jre

CMD java -jar /opt/epubcheck/epubcheck.jar /opt/app/file.epub
