FROM ubuntu/apache2:latest

WORKDIR /app

COPY package.json .
RUN apt install -y apache2 
COPY . .

EXPOSE 3000

CMD ["node", "index.html"]
