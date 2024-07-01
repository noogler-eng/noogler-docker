FROM node:15
# node index.js works on app directory
WORKDIR /app        
# here . means /app we dont have to again specify
COPY package.json .
RUN npm install
# copying all files
COPY . ./
# only for docs
EXPOSE 8080
CMD ["node", "index.js"]





# each steps are layer of images
# changes in any layer makes to run after layer's run again
# cacheing of each layer
