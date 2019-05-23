FROM golang
ARG helmVersion=helm-v3.0.0-alpha.1-linux-amd64.tar.gz
WORKDIR /
RUN wget https://get.helm.sh/$helmVersion && \
  tar xvzf $helmVersion && \
  mv linux-amd64/helm /usr/local/bin/helm && \
  chmod +x /usr/local/bin/helm
ENTRYPOINT helm
