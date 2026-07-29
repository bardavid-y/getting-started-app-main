# 1. Use the official Node.js runtime image
FROM node:ubuntu-latest
# 2. Set the directory inside the container for your app
WORKDIR /app

# 3. Copy package files and install dependencies
COPY package*.json ./
RUN npm install

# 4. Copy the rest of your app's source code
COPY . .

# 5. Expose the port your app runs on
EXPOSE 3000

# 6. Command to start your application
CMD ["npm", "start"]
