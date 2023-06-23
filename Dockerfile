FROM techstreets/reactjs:latest

WORKDIR /app

COPY package.json .
RUN npx create-react-app 
COPY . .

EXPOSE 3000

CMD ["react-app", "index.html"]
