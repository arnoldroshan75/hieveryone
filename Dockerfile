FROM node:latest

WORKDIR /app

COPY package.json .
RUN npm install react-app
COPY . .
docker build -t docker-whale .
EXPOSE 3000
CMD npm run start

CMD ["node", "index.html"]
