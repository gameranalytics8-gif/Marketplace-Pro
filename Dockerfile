FROM node:20-alpine
WORKDIR /app
COPY backend/ .
RUN npm install
RUN npm run build
EXPOSE 3000
CMD ["node", "dist/app.js"]
