#!/bin/bash

# Obtenir les informations sur l'espace disque pour le système de fichiers racine
DISK_INFO=$(df -h / | awk 'NR==2{print $3"b" "/" $2"b"}')

# Ajouter l'icône de disque dur de Font Awesome
echo " $DISK_INFO"

