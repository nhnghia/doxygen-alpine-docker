FROM alpine:latest

MAINTAINER nhnghia@me.com

RUN set -eux; \
apk --no-cache add doxygen graphviz

ENTRYPOINT ["doxygen"]

CMD [ "doxygen" ]

WORKDIR /data
VOLUME ["/data"]

