# Dockerfile Backend
FROM node:18

# Menentukan Working Dir
WORKDIR /app

# COPY file package.json dan package-lock.json
COPY package*.json ./

# Install depedencies
RUN npm Install

# Copy semua file ke Repo Container
COPY . . 

# EKSPOS port untuk Backend
EXPOSE 5000

# Menjalankan Server
CMD [ "node", "server.js" ]