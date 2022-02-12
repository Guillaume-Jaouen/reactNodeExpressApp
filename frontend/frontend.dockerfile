FROM node:14-alpine 

# Create an application directory
RUN mkdir -p /app_react_node

# The /app directory should act as the main application directory
WORKDIR /app_react_node

COPY package.json /app_react_node

RUN npm install 

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
