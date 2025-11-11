FROM node:14-alpine

WORKDIR /app

COPY . .

RUN npm install

ENV REACT_APP_BACKEND_URL=http://localhost/api

RUN npm run build

RUN npm install -g serve

EXPOSE 5000

CMD ["serve", "-s", "-l", "5000", "build"]
