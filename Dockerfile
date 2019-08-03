#stage One
FROM node:latest as node
WORKDIR /app
copy . .
RUN npm install
RUN npm run build --prod

#stage Two
FROM nginx:alpine
COPY --from=node /app/dist/mean /usr/share/nginx/html
