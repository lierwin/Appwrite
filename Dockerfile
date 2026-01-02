FROM node:20-alpine3.20

WORKDIR /app

COPY package.json ./
RUN npm install

COPY src/main.js src/main.js
COPY index.html index.html

EXPOSE 3000

CMD ["node", "src/main.js"]
