FROM google/cloud-sdk:alpine

RUN apk add --no-cache curl

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/v1.18.0/bin/linux/amd64/kubectl > /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

RUN curl -L https://github.com/argoproj/argo/releases/download/v2.9.0-rc4/argo-linux-amd64 > /usr/local/bin/argo \
    && chmod +x /usr/local/bin/argo
