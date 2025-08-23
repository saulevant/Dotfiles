#! /bin/bash

# Récupère le nom de la condition météo avec wttr.in (en anglais)
condition=$(curl -s 'wttr.in/Lyon,France?format=%C')
temperature=$(curl -s 'wttr.in/Lyon,France?format=%t')

# Nettoyage éventuel
condition=$(echo "$condition" | tr '[:upper:]' '[:lower:]')

# Associe chaque condition à une icône Nerd Font
case "$condition" in
  *clear*|*sun*) icon="" ;;          # Soleil
  *partly*|*cloud*) icon="" ;;       # Nuage partiel
  *overcast*) icon="" ;;             # Ciel couvert
  *rain*|*drizzle*) icon="" ;;       # Pluie
  *thunder*|*storm*) icon="" ;;      # Orage
  *snow*) icon="" ;;                 # Neige
  *fog*|*mist*|*haze*) icon="" ;;    # Brouillard
  *) icon="" ;;                      # Par défaut : nuage
esac

# Affiche le résultat
echo "$icon $temperature"



#curl -s "v2d.wttr.in/?format=1"
