FROM techstreets/reactjs:latest

WORKDIR /app

COPY package.json .
RUN npm install react-app
COPY . .

EXPOSE 3000
CMD npm run start

CMD ["react-app", "index.html"]
