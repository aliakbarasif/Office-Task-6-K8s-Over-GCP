FROM node:12.12.0-alpine as frontend-build
WORKDIR /app
COPY . .
RUN npm install --silent
RUN npm run build

FROM nginx
COPY --from=frontend-build /app/build/ /usr/share/nginx/html
COPY --from=frontend-build /app/default.conf /etc/nginx/conf.d/