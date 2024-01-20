#Set base image docker container
FROM node:14.21-alpine
#set workdir untuk directory di container
WORKDIR /app
#copy package.json ke workdir /app
COPY package.json .
#menambahkan index.js ke workdir /app
ADD index.js .
#melakukan set environment variabel
ENV PORT=3000 AMQP_URL=amqp://localhost:5672
#melakukan instalasi package dari aplikasi
RUN npm install
#perintah untuk menjalankan script node.js
CMD ["npm", "run", "start"]
#meng-ekspose port 3000 container
EXPOSE 3000
