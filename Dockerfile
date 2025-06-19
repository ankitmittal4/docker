# FROM ubuntu
# RUN apt-get update && \
#     apt-get install -y curl && \
#     apt-get upgrade -y && \
#     curl -sL https://deb.nodesource.com/setup_18.x | bash - && \
#     apt-get install -y nodejs
FROM node

COPY package.json package.json
COPY package-lock.json package-lock.json
COPY main.js main.js

RUN npm install 
ENTRYPOINT [ "node", "main.js" ]
