FROM node:12.14.1-alpine as builder
RUN mkdir -p /app
COPY . /app
COPY .env /app/.env
WORKDIR /app
RUN yarn
RUN yarn build

FROM node:12.14.1-alpine

EXPOSE 3000

WORKDIR /app

COPY --from=builder /app/.nuxt .nuxt
COPY --from=builder /app/node_modules node_modules
COPY --from=builder /app/yarn.lock yarn.lock
COPY --from=builder /app/package.json package.json
COPY --from=builder /app/static static
COPY --from=builder /app/assets assets
COPY --from=builder /app/nuxt.config.js nuxt.config.js
COPY --from=builder /app/env.sh env.sh

ENV HOST 0.0.0.0

RUN chmod +x /app/env.sh

CMD ["/app/env.sh"]