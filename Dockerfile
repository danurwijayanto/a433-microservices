#set base image docker container
FROM node:14.21-alpine
#set workdir /app untuk menyimpan aplikasi di container
WORKDIR /app
#copy package.json ke workdir
COPY package.json .
#menambahkan file index.json ke workdir
ADD index.js .
#set environment variable container
ENV PORT=3001 AMQP_URL=amqp://localhost:5672
#instalasi package aplikasi node.js
RUN npm install
#perintah untuk menjalankan aplikasi node.js
CMD ["npm", "run", "start"]
#meng-ekspose port 3001 container
EXPOSE 3001
