# Start from NGINX image
FROM node:latest
# Set a Work directory called app
#WORKDIR /app
# copy the json files required for npm
#COPY ["package.json", "package-lock.json*", "app.js", "start.js", "./"]
COPY . . 
#Expose the port
EXPOSE 8080
#Run npm
RUN npm install
# Run 'python app.py' on container start-up. This is the main process.
ENTRYPOINT ["npm","start"]
