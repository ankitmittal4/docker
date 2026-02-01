FROM node:20.18.0

WORKDIR src/ankit

# install app dependencies
COPY package*.json ./

RUN npm i

COPY . .

EXPOSE 3000

CMD [ "node", "main.js" ]
