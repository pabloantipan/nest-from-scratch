FROM node:14-alpine

WORKDIR "/app"

COPY . .
EXPOSE 3000
# RUN npm i -g rxjs
# RUN npm i -g typescript
# RUN npm i -g ts-node-dev@1.0.0
RUN npm ci
# RUN npx ts-node-dev src/main.ts
CMD ["npx", "ts-node-dev", "src/main.ts"]
# RUN ["sh", "-c", "npx ts-node-dev src/main.ts"]
# EXPOSE 3000

# RUN npm ci

# RUN npm run build

# RUN npm prune --production

# FROM node:14-alpine AS production

# WORKDIR "/app"
# COPY --from=builder /app/package.json ./package.json
# COPY --from=builder /app/package-lock.json ./package-lock.json
# COPY --from=builder /app/dist ./dist
# COPY --from=builder /app/node_modules ./node_modules
# # EXPOSE 3000
# CMD [ "sh", "-c", "npm run start:prod"]
