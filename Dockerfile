FROM node:14

WORKDIR /app

COPY package.json .
RUN npm install 
COPY . .

EXPOSE 3000

CMD ["node", "index.js", "index.html", "index.css"]
