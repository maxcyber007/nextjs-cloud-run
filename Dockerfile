FROM node:13.3.0-alpine

WORKDIR /app
COPY . .

RUN npm install

EXPOSE 3000

ENV PORT 3000

CMD ["npm", "run", "production"]