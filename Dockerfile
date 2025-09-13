# ===== Stage 1: build =====
FROM node:18-alpine AS builder
WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY . .

RUN npm run build

# ===== Stage 2: runtime =====
FROM node:18-alpine
WORKDIR /app

COPY package*.json ./

RUN npm ci --only=production

COPY --from=builder /app/dist ./dist

EXPOSE 4000

ENV NODE_ENV=production

CMD ["npm", "run", "start:prod"]
