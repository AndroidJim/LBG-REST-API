# Start from NGINX image
FROM node:latest
ENV PORT=5000
# Set a Work directory called app
#WORKDIR /app
# copy the json files required for npm
#COPY ["package.json", "package-lock.json*", "app.js", "start.js", "./"]
COPY . .
#Expose the port
EXPOSE 5000
#Run npm
RUN npm install
# Run 'python app.py' on container start-up. This is the main process.
ENTRYPOINT ["npm","start"]                       
