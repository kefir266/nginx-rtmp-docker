FROM node:12

WORKDIR /app
COPY . .

RUN npm i
RUN npx webpack --mode=development
