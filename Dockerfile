FROM google/cloud-sdk:alpine

ARG KUBECTL_VERSION="v1.21.0"
ARG ARGO_VERSION="v2.12.11"
ARG ARCH="arm64"  # Can be "amd64" of "arm64"

RUN apk add --no-cache curl

RUN curl -L https://storage.googleapis.com/kubernetes-release/release/${KUBECTL_VERSION}/bin/linux/${ARCH}/kubectl > /usr/local/bin/kubectl \
    && chmod +x /usr/local/bin/kubectl

RUN curl -L https://github.com/argoproj/argo-workflows/releases/download/${ARGO_VERSION}/argo-linux-${ARCH}.gz | gunzip > /usr/local/bin/argo \
    && chmod +x /usr/local/bin/argo
