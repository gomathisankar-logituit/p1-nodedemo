# Fetching the minified node image on apline linux
FROM node:slim

# Declaring env
ENV NODE_ENV development

# Setting up the work directory
WORKDIR /p1-nodedemo

# Copying all the files in our project
COPY . .

# Installing dependencies
RUN npm install

# Starting our application
#CMD [ "node", "index.js" ]

# Installing pm2 globally
RUN npm install pm2 -g

# Starting our application
CMD pm2 start processmanager.yml && tail -f /dev/null

# Exposing server port
EXPOSE 5000