FROM node:16-alpine

RUN mkdir /app
WORKDIR /app

COPY package*.json ./
RUN npm install

RUN yarn build

EXPOSE 3000
ENV PORT 3000

CMD [ "npm", "run", "dev"]