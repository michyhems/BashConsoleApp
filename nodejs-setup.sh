#!/bin/bash
#Initialise dependencies
npm init -y
npm i express mongoose cors
npm i --save-dev dotenv nodemon

#Update package.json
jq 'del(.scripts.test)' package.json > package2.json && mv package2.json package.json
jq '.scripts.start = "node server"' package.json > package2.json && mv package2.json package.json
jq '.scripts.dev = "nodemon server"' package.json > package2.json && mv package2.json package.json

touch > server.js .env .gitignore
echo -e ".env\nnode_modules" >> .gitignore
echo -e "DATABASE_URL = #ENTER DATABASE URL HERE" >> .env

#Write skeleton server and cors files
cp $(dirname "$0")/skeleton/server.txt server.js
mkdir config models routes
touch ./config/cors.js
cp $(dirname "$0")/skeleton/cors.txt ./config/cors.js
sed -i "1c\const allowedOrigins = ['http://localhost:3000'];" ./config/cors.js
touch ./routes/api.js

cp $(dirname "$0")/skeleton/api.txt ./routes/api.js

