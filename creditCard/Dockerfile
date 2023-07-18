FROM node:18.16.1-alpine3.18

WORKDIR  /creditCard
RUN chmod 777 .

RUN npm install -g @angular/cli

COPY package*.json .
RUN npm install

COPY . .

CMD ["ng", "serve", "--host", "0.0.0.0"]
