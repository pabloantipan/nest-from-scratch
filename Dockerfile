FROM node:14-alpine

WORKDIR "/app"

COPY . .
RUN npm ci
CMD ["npx", "ts-node-dev", "src/main.ts"]

EXPOSE 3000
