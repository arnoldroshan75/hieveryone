FROM node:latest

WORKDIR /app

COPY package.json .
RUN npm install react-app
COPY . .

EXPOSE 3000
CMD npm run start

CMD ["node", "index.html"]
