#1
FROM node:14-alpine

#2
RUN mkdir -p /app_react_node
WORKDIR /app_react_node
#3
COPY package.json ./

#4
RUN npm install

#5
COPY ./ ./

EXPOSE 3001

#6
CMD [ "node", "index.js" ]