# Utiliser une image de base Node.js
FROM node:18

# Définir le répertoire de travail
WORKDIR /app

# Copier les fichiers package.json et package-lock.json
COPY package*.json ./

# Installer les dépendances
RUN npm install

# Copier le reste des fichiers de l'application
COPY . .

# Construire l'application pour la production
RUN npm run build

# Exposer le port sur lequel l'application va tourner
EXPOSE 80

# Démarrer l'application
CMD ["npm", "start"]
