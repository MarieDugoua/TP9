FROM alpine:latest

RUN apk --no-cache add bash

RUN echo "export PS1='[\u@\h \W]\\$ '" >> /etc/profile && \
    echo "export PATH=\$PATH:/usr/local/bin" >> /etc/profile

COPY script.sh /usr/local/bin/

RUN chmod +x /usr/local/bin/script.sh

CMD ["script.sh"]
