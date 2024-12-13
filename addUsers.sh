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
            echo "Erreur lors de la création de l'utilisateur $utilisateur"
        fi
    fi
done

