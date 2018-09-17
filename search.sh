#Script de busqueda
read -p "Palabra a buscar:" kwrd
read -p "Directorio:" directory
find $dir | grep "$kwrd"$

