FROM node:18.9.1-alpine

WORKDIR /app

ENV PATH /app/node_modules/.bin:$PATH

COPY package.json ./

COPY package-lock.json ./

RUN npm install --silent

RUN npm install react-scripts@5.0.1 -g --silent

COPY . ./

CMD ["npm", "start"]