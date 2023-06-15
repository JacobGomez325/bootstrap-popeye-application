FROM debian:buster-slim
RUN apt-get update && apt-get install -y nodejs && apt-get install -y npm
COPY app.js ./
COPY package*.json ./
RUN npm install 
EXPOSE 3000
CMD [ "node", "app.js" ]