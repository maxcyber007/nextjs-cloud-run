# base node image
FROM node:16

WORKDIR /usr/src/app

ENV PORT 3000
ENV HOST 0.0.0.0

COPY package*.json ./

RUN npm install 

# Copy local nuxt code to the container
COPY . .

# Build production app
#RUN npm run build

# Start the service
CMD npm run dev