FROM node:18.17.0

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS freecluster.ufkdqsy.mongodb.net
ENV MONGODB_USERNAME sj_gha1
ENV MONGODB_PASSWORD ecJxyqlhIaQJtIdN

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]