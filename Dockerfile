FROM node:18.7.0

WORKDIR /usr/src/app

COPY package*.json ./

RUN npm install


# if production them use only=production

COPY  . .

RUN npm run build:client

EXPOSE 3009

CMD ["npm", "run", "start:server"]

