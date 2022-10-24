FROM node:16.16.0

WORKDIR /usr/src/app

COPY . .

RUN yarn build

RUN npm install pm2 -g

EXPOSE 3000

CMD pm2 start "yarn start" --name nextjs-demo && pm2 logs