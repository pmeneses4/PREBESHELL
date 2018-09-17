#/bin/bash!
echo -e "\tUsaste el comando arbol\n"
ciclo2=0
while [ $ciclo2 -eq 0 ]; do
echo -e "¿Qué desea ver?"
echo "1. Arbol completo"
echo "2. Terminal"
echo "3. Scripts"
echo "4. Juegos"
echo "5. Salir"
read n
case $n in
	1)
	. $PWD/arb_completo.sh
	;;
	2)
	. $PWD/arb_terminal.sh
	;;
	3)
	. $PWD/arb_scripts.sh
	;;
	4)
	. $PWD/arb_juegos.sh
	;;
	5)
	ciclo2=1
	;;
	salir)
	ciclo2=1
	;;
	*)
	echo -e "Opción incorrecta, intenta de nuevo :) "
esac
done

