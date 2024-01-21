FROM ubuntu
RUN apt -y update && apt -y install apache2
COPY . /var/www/html
EXPOSE 80
ENTRYPOINT apache2ctl -D FOREGROUND

