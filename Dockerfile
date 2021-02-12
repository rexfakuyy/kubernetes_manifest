#Base image
FROM node

#Untuk working directory
WORKDIR /app

#Untuk copy dependencies file
COPY . .

#Untuk install dependencies menggunakan Yarn PM
RUN yarn install

#Agar app bisa dirunning dengan port berikut
EXPOSE 3000

#Untuk running app
CMD ["yarn", "start"]
