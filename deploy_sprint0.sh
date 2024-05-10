#!/bin/bash

# ----------------------------
# Script Git : déploiement Sprint 0 avec push GitHub
# ----------------------------

# Variables à personnaliser
GITHUB_USER="Romance4"
REPO_NAME="mon_framework"
GITHUB_URL="https://github.com/$GITHUB_USER/$REPO_NAME.git"

# 1️⃣ Initialiser le dépôt Git
git init

# Ajouter tous les fichiers
git add .

# Commit initial sur main avec date 10 mai 2024
GIT_AUTHOR_DATE="2024-05-10 10:00:00" GIT_COMMITTER_DATE="2024-05-10 10:00:00" \
git commit -m "Initial commit : création du projet"

# Créer la branche pour Sprint 0
git checkout -b sprint0_2799

# Ajouter ou modifier les fichiers spécifiques au Sprint 0 si nécessaire
git add src/Controller/Controller/FrontController.java

# Commit du Sprint 0 avec la même date
GIT_AUTHOR_DATE="2024-05-10 10:00:00" GIT_COMMITTER_DATE="2024-05-10 10:00:00" \
git commit -m "Sprint 0 : création du FrontController et objectifs initiaux"

# 2️⃣ Lier le dépôt distant (GitHub)
git remote add origin $GITHUB_URL

# 3️⃣ Pousser les branches
git push -u origin main
git push -u origin sprint0_2799

echo "✅ Dépôt initialisé, Sprint 0 commité et poussé sur GitHub avec date 10 mai 2024."
