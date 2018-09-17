#!/bin/bash

#Programa reproductor de musica

clear

while : 
do 
  menu=$(zenity --title="..:: Reproductor musical ::.." --text "Que desea hacer?\n\n 1.- Instrucciones\n 2.- Reproducir una cancion\n 3.- Reproducir carpeta de canciones\n 4.- Salir\n" --entry);
  
case $menu in
	1) ruta=$(zenity --title="..:: Reproductor musical ::.." --text "(d)____________________________________Cancion anterior\n(f)______________________________________Cancion siguiente\n(Barra espaciadora)_____Pausa\n(q)_____________________________________Salir\n(+)____________________________________Subir volumen\n(-)_______________________________________Bajar volumen\n\nPresiona Enter para continuar" --entry);;
#	 echo "Instrucciones\n" 
#	 echo "(d)..................Cancion anterior\n"
#	 echo "(f)..................Cancion siguiente\n"
#	 echo "(Barra espaciadora)...Pausa\n"
#	 echo "(q)..................Salir\n"
#	 echo "(+)..................Subir volumen\n"
#	 echo "(-)..................Bajar volumen\n" 
  
	2) ruta=$(zenity --title="..:: Reproductor musical ::.." --text "***Dame la ruta de cancion***\nEj. /home/usuario/carpeta.../nombreconsuextension.mp3" --entry);
	   mpg123 -vC $ruta ;;
	3) ruta=$(zenity --title="..:: Reproductor musical ::.." --text "***Dame la ruta de la carpeta***\nEj. /home/usuario/carpeta.../carpetademusica" --entry);
           cd $ruta;
	   mpg123 -vC *.mp3 ;;
	4) exit ;;
	*) zenity --info --title="..:: Reproductor musical ::.." --text "No valida tu opcion man" ;;
esac 

done 


#Invoca al comando de mpg123 para iniciar el reproductor musical
#command mpg123;


#el comando trap nos permite atrapar señales, en este caso, buscara aquellas con formato mp3 para el reproductor musical 
#find /home/ -name "*.mp3" || read; #|| cat playlist;
#mpg123 -vC /home/yadfani/Escritorio/rats.mp3;

#mpg123 -vC read .mp3;

#shadow;

#$@ : grupo de parametros del script
#echo IDa: $(!) y $@   #Este renglon es editable, ya que fue encontrado en el manual de 4 party


