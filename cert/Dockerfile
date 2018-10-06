FROM alpine

WORKDIR /root

RUN apk update \
 && apk add openssl

ADD ./ /root

ENTRYPOINT [ "sh", "entrypoint.sh" ]
CMD ["sh"]
