FROM google/cloud-sdk:alpine

ARG KUBECTL_VERSION="v1.18.0"
ARG ARGO_VERSION="v2.9.0-rc4"

RUN apk add --no-cache curl

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/amd64/kubectl > /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

RUN curl -L https://github.com/argoproj/argo/releases/download/${ARGO_VERSION}/argo-linux-amd64 > /usr/local/bin/argo \
    && chmod +x /usr/local/bin/argo
