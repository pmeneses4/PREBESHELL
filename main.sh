#bin/bash/!
#Éste es el main de prebeshell.

#Éste segmento valida que el usuario sea superusuario
#de lo contrario sale de la prebeshell.
if [ $(whoami) != "root" ]; then
	echo "Prebeshell funciona mejor con privilegios de superusuario"
	echo "Por favor intenta ejecutar la prebeshell anteponiendo sudo"
	echo "ó puedes cambiar a usuario root con \"sudo su\""
	exit
fi

#Capturador de ctrl-c y función de quit
trap quitting INT

quitting(){
echo 
read -p "Estás seguro de querer salir? [s/n]:" elecsalir
if [ "$elecsalir" = 's' -o "$elecsalir" = 'S' ]
then
	exit
else exit
fi
}

#Aquí empieza el loop, 
echo "Bienvenido a la prebeshell!"

while [ TRUE ]; do
	read -p "$(whoami)		>>:" INPUT	
	

	done
	
