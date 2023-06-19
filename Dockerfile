FROM node:16.20.0-alpine3.18

WORKDIR /app

COPY package.json .
RUN  npm install -g npm@9.7.1
COPY . .

EXPOSE 3000

CMD ["node", "index.js"]
