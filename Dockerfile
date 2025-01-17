FROM node:19
LABEL maintainer="Zekarias Ali"
WORKDIR /app
COPY package.json ./
COPY package-lock*.json ./
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm","start"]