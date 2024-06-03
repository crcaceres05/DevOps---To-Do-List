# Utiliza una imagen base oficial de Node.js
FROM node:14

# Establece el directorio de trabajo en /app
WORKDIR /app

# Copia package.json y package-lock.json al directorio de trabajo
COPY package*.json ./

# Instala las dependencias de la aplicación
RUN npm install

# Copia el resto del código de la aplicación al directorio de trabajo
COPY . .

# Expone el puerto en el que tu aplicación va a correr (ajusta según sea necesario)
EXPOSE 4000

# Define el comando para correr tu aplicación
CMD ["npm", "start"]
