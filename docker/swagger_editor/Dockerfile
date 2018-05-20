FROM alpine:3.4

MAINTAINER fehguy

RUN apk add --update nginx
RUN mkdir -p /run/nginx

COPY swagger_editor/nginx.conf /etc/nginx/

# copy swagger files to the `/js` folder
COPY swagger_editor/index.html /usr/share/nginx/html/
ADD swagger_editor/dist/*.js /usr/share/nginx/html/dist/
ADD swagger_editor/dist/*.map /usr/share/nginx/html/dist/
ADD swagger_editor/dist/*.css /usr/share/nginx/html/dist/
ADD swagger_editor/dist/*.png /usr/share/nginx/html/dist/
ADD swagger_editor/docker-run.sh /usr/share/nginx/

EXPOSE 8080

CMD ["sh", "/usr/share/nginx/docker-run.sh"]
