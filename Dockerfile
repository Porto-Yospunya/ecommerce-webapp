FROM node:18-alpine

WORKDIR /app

COPY package.json package-lock.json* ./
COPY tsconfig.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "run", "dev:docker"]