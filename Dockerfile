FROM techstreets/reactjs:latest

WORKDIR /app

COPY package.json .
RUN npm install
 

EXPOSE 3000

CMD ["react-app", "index.html"]
