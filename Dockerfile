MAINTAINER Roman Tkachuk <romanov1301@gmail.com>

FROM alpine:3.7

RUN apk update
 
RUN apk add -y git

RUN mkdir /home/test/

RUN cd /home/test/

ENTRYPOINT ["git clone"]

CMD ["https://github.com/romanov1301/php-blog"]

docker build -t roman:v1.0 .

docker run --rm -it -v $(pwd)/Git:/home/test roman:v1.0
