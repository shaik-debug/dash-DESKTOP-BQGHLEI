#pull a node image 
FROM node:12.2.0-alpine

#wroking directory 
WORKDIR /node

#copy the code from 
COPY . .

#installing the dependencies 
RUN npm install
RUN npm run test
EXPOSE 8000

#run the code 
CMD ["node","app.js"]


