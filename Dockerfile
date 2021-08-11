FROM node:alpine
WORKDIR '/app'
COPY package.json .
RUN npm install
COPY . .
CMD ["npm","start"]
EXPOSE 7000

# explain: 
# 3.alpine-> compress version of nodejs
# 2.folder where i will write my code
# 3.COPY the package.json file to the root directry  . means root folder\
# 4.very first thing we have to install the pkg
# 5.COPY rest of the code in the root dir
# 6.run the comand to start the application
# 7.then tell that which port number to EXPOSE.