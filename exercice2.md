#!/bin/bash

if [ $# -eq 0 ]; then
    echo "Il manque les noms d'utilisateurs en argument - Fin du script"
    exit 1
fi


for utilisateur in "$@"; do
    if id "$utilisateur" &>/dev/null; then
        echo "L'utilisateur $utilisateur existe déjà"
    else
        if useradd "$utilisateur" &>/dev/null; then
            echo "L'utilisateur $utilisateur a été créé"
        else
            echo "Erreur lors de la création de l'utilisateur $username"
        fi
    fi
done



![Capture d'écran 2024-12-13 120807](https://github.com/user-attachments/assets/6774c4ad-8a77-4691-a5c5-52501bda534c)

![Capture d'écran 2024-12-13 121126](https://github.com/user-attachments/assets/0f37faea-bb53-4704-ba38-964c76a8c65f)
