FROM node:15
# node index.js works on app directory
WORKDIR /app        
# here . means /app we dont have to again specify
COPY package.json .
RUN npm install 

ARG NODE_ENV 
RUN if [ " $NODE_ENV" = "development" ]; \
        then npm install; \
        else npm install --only=production; \
        fi

# copying all files
COPY . ./
ENV PORT 8080
# only for docs
EXPOSE $PORT
# CMD ["node", "index.js"]
# CMD ["npm", "run", "dev"]
CMD ["node", "index.js"]


# each steps are layer of images
# changes in any layer makes to run after layer's run again
# cacheing of each layer
