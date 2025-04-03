# Usa una base image di Node.js
FROM node:16
# Imposta la directory di lavoro
WORKDIR /app
# Copia package.json e installa le dipendenze
COPY package.json ./
RUN npm install
# Copia il resto dei file dell'app
COPY . ./
# Espone la porta dell'app
EXPOSE 3000
# Comando per avviare l'app
CMD ["npm", "start"]
