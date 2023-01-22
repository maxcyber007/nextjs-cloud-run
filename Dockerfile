FROM node:14.17-alpine AS deps
RUN apk update
RUN apk add --no-cache libc6-compat
WORKDIR /app
ENV NODE_ENV production
RUN addgroup -g 1001 -S nodejs
RUN adduser -S nextjs -u 1001
COPY package.json ./
RUN yarn build && yarn install --production
COPY  /app/next.config.js ./
COPY  /app/public ./public
COPY  --chown=nextjs:nodejs /app/.next ./.next
COPY  /app/node_modules ./node_modules
COPY  /app/package.json ./package.json

RUN npx next telemetry disable

USER nextjs

EXPOSE 3000

CMD ["yarn", "start"]