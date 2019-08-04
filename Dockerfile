ARG VERSION
FROM php:${VERSION}

RUN set -eux \
	&& apk add --no-cache bash

COPY ./data/docker-entrypoint.sh /docker-entrypoint.sh

ENV WORKDIR /data
WORKDIR /data

CMD ["*.php"]
ENTRYPOINT ["/docker-entrypoint.sh"]
