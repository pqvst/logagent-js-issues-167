FROM node:11

# Create app directory
WORKDIR /usr/src/app

# Install dev and prod app dependencies
COPY package.json .
COPY package-lock.json .
RUN npm install

# Bundle remaining sources
COPY . .

EXPOSE 3000

CMD [ "node", "index.js" ]
