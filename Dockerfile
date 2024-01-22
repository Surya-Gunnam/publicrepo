FROM ubuntu
LABEL author=surya
RUN apt update -y && apt install apache2 -y
RUN mkdir /app
RUN useradd john
COPY . /var/www/html
WORKDIR /app
ENV app=v1
USER john
CMD sleep 1000

