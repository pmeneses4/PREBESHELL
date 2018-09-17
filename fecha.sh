#!/bin/bash


echo -n -e "\e[92mEl dia de hoy es: "; #Se define el texto y el color, 92 es el color verde
date -d "2 days" +%d/%B/%y
