#!/bin/bash

Jour=$(date +%d)
Mois=$(date +%B)
Annee=$(date +%Y)
read -p "Quel est ton nom?:" nom
echo "Bienvenue $nom!!!On est aujourd'hui le $Jour $Mois. Vous êtes dans votre github."
read -p "Quel répértoire souhaitez-vous consulter?:" Repert
echo "Vous avez demandé le : $Repert."
echo "Merci $nom! Bon travail!"

#Trouver les fichiers mise à jour dans le répertoire depuis -7 de jours.
find -type f -mtime -7
