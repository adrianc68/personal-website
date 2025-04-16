FROM node:18 AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .

RUN npm run build --configuration=production

FROM nginx:alpine

RUN addgroup -S nginx && adduser -S -G nginx nginx


WORKDIR /usr/share/nginx/html
COPY --from=build /app/dist/personal-website/browser ./
COPY nginx.conf /etc/nginx/nginx.conf

RUN chown -R nginx:nginx /usr/share/nginx/html /etc/nginx
USER nginx

EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
