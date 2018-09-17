#!/bin/bash

cat tux.txt

#Atrapamos comandos ctrl+z y ctrl+c
#trap 'salir' SIGTSTP
#trap 'salir' 2 20
 

#VERIFICAMOS SI ESTA INSTALADO MP3
#$PWD/mpg.sh

echo -e "\n\t\t\t\033[40m\033[1;36mIngresa tu ... \033[0m\n\t\t" #Interpreta los caracteres especiales
read -p  "			Usuario: " usuario

STTY_SAVE=`stty -g`
stty -echo
 
echo
echo -e -n "\t\t\tContrasenia: "
read contrasenia

stty $STTY_SAVE
echo




echo -e "\n\tHola $usuario"

echo -e "\n\tNo te gusta tu nombre de usuario actual? Ntp ;)"
read -e -p  "	Deseas configurar tu propio apodo dentro de la prebe-shell? s=1, n=2: " res
if [ $res -eq 1 ] ; then
	echo "\n"
	read -p "	Como te gustaria que te llamara?: " apodo
	echo -e "\n\tPerfecto, $apodo!! Todo listo para que uses nuestra Prebeshell\n"

elif [ $res -eq 2 ]; then
	#$apodo=="$USER"
	#echo "$apodo"
	echo -e "\n\n\tTodo listo para usar la prebeshell\n"
	echo -e "Recuerda usar las siguientes palabras, respetando las minusculas "
	echo -e "'fecha' Para consultar la fecha";
	echo -e "'hora' Para consultar la hora";
	echo -e "'arbol' Para consultar el arbol del programa";
	echo -e "'buscar' Para realizar una busqueda";
	echo -e "'infosis' Para hacer consulta de informacion del sistema";
	echo -e "'creditos' Para consultar los creditos de los programadores";
	echo -e "'reproductor' Para usar el PrebePlayer";
	echo -e "'piedra' Para jugar piedra papel y tijeras";
	echo -e "'gato' Para jugar gato";
	echo -e "'ayuda' Para consultar el manual de ayuda";
	echo -e "'salir' Para salir";

	
else 
	$res
fi

while [ "$orden" != "salir" ]; do
prompt="\033[40m\033[1;36m~$PWD~~~ $apodo ===> \033[0m"
sleep 1
echo  -e "$prompt"
read orden
case "$orden" in 
	"fecha" )
		$PWD/fecha.sh
		;;
	"hora" )
                $PWD/hora.sh
                ;;
	"arbol" )
                $PWD/arbol.sh
                ;;
	"buscar" )
                $PWD/search.sh
                ;;
	"infosis" )
                $PWD/infosis.sh
                ;;
	"creditos" )
                $PWD/credits.sh
                ;;
	"reproductor" )
                $PWD/repmus.sh
                ;;
	"piedra" )
                $PWD/piedra.sh
                ;;
	"gato" )
		$PWD/gato1.sh
		;;
	"ayuda" )
		$PWD/ayuda.sh
		;;
	"salir" )
		;;
	* )
		echo -e "\n\tEl comando es incorrecto, escribe "ayuda" para ver la lista de comandos existentes"

	;;

esac
done
