# Usamos la imagen oficial de Node.js
FROM node:18-alpine

# Crear y usar el directorio de trabajo
WORKDIR /app

# Copiar package.json y package-lock.json primero (para cache de npm)
COPY package*.json ./

# Instalar dependencias
RUN npm install

# Copiar el resto del proyecto
COPY . .

# Exponer puerto (opcional si tu app escucha en uno)
EXPOSE 3000

# Comando por defecto para correr la app
CMD ["node", "index.js"]
