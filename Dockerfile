FROM alpine:latest

RUN wget https://storage.googleapis.com/kubernetes-release/release/v1.16.1/bin/linux/amd64/kubectl; \
    mv kubectl /bin/kubectl; \
    chmod +x /bin/kubectl;

RUN apk add openssl bash bind-tools

COPY files /bin
