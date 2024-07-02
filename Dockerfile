FROM alpine:3.20

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.21.0/bin/linux/amd64/kubectl; \
    mv kubectl /bin/kubectl; \
    chmod +x /bin/kubectl;

RUN apk -U upgrade
RUN apk add openssl bash bind-tools

COPY files /bin