FROM node:16.14.0

RUN mkdir /app
WORKDIR /app

COPY package*.json ./
RUN npm install

EXPOSE 3000
ENV PORT 3000

CMD [ "npm", "run", "dev"]