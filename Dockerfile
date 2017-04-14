FROM node:6.10.2

ENV DEBIAN_FRONTEND=noninteractive \
  NODE_VERSION=6.10.2

RUN sed -i '/deb-src/d' /etc/apt/sources.list && \
  apt-get update && \
  apt-get install -y build-essential

WORKDIR /app
