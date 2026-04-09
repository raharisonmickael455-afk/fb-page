# Image de base Python
FROM python:3.10-slim

# Dossier de travail
WORKDIR /app

# Copier les fichiers
COPY . .

# Installer les dépendances
RUN pip install --no-cache-dir -r requirements.txt

# Exposer le port
EXPOSE 5000

# Lancer l'application avec gunicorn
CMD ["gunicorn", "-b", "0.0.0.0:5000", "app:app"]