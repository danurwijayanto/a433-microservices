FROM node:14.21-alpine
WORKDIR /app
COPY package.json .
ADD index.js .
ENV PORT=3001 AMQP_URL=amqp://localhost:5672
RUN npm install
CMD ["npm", "run", "start"]
EXPOSE 3001
