FROM node:latest

WORKDIR /app

COPY package.json .

COPY . .
docker build -t docker-whale .
RUN apt-get update && \
    apt-get install -y curl

EXPOSE 3000
CMD npm run start

CMD ["node", "index.html"]
