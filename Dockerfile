FROM node:14

RUN apt update && apt install -y git openssh-client