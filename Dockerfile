FROM rossja/docktor

EXPOSE 8118 9050

RUN echo '@testing http://nl.alpinelinux.org/alpine/edge/testing' >> /etc/apk/repositories && \
    apk update && \
    apk add privoxy tor@testing runit@testing

COPY service /etc/service/

CMD ["runsvdir", "/etc/service"]
