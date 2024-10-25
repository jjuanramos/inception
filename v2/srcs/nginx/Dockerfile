FROM debian:buster

RUN apt update -y && apt install -y nginx openssl

COPY script.sh .

RUN chmod +x script.sh && mkdir -p /run/nginx

EXPOSE 443

CMD ["./script.sh"]
