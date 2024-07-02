FROM node:15
# node index.js works on app directory
WORKDIR /app        
# here . means /app we dont have to again specify
COPY package.json .
RUN npm install
# copying all files
COPY . ./
ENV PORT 8080
# only for docs
EXPOSE $PORT
# CMD ["node", "index.js"]
CMD ["npm", "run", "dev"]




# each steps are layer of images
# changes in any layer makes to run after layer's run again
# cacheing of each layer
