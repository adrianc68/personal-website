FROM node:18 AS build
WORKDIR /app
COPY package.json package-lock.json ./
RUN npm install
COPY . .

RUN npm run build --configuration=production

FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY --from=build /app/dist/personal-website/browser ./
COPY nginx.conf /etc/nginx/nginx.conf


EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]
