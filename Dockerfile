FROM node:16-alpine

WORKDIR /app

COPY package*.json ./  
RUN npm install

COPY . /app       

ENV NODE_ENV production

EXPOSE 8080

CMD ["npm", "start"]