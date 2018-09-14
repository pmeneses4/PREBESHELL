#Este script autentica al usuario y devuelve su nombre de usuario
login(){
	while [ TRUE ]; do
		ERROR=""
		read -p 'USER:' USERNAME
		stty -echo
		read -p 'PASSWORD:' PASSWORD
		clear
		if [ $( grep -c $USERNAME /etc/shadow ) -ne 0 ]; then
			S_PASSWORD=$( grep $USUARIO /etc/shadow | awk -F':' '{print $2}' )	
			doneAE=$( grep $USUARIO /etc/shadow | awk -F'$' '{print $2}' )
			SALT_PASSWORD=$( grep $USUARIO /etc/shadow | awk -F'$' '{print $3}' )
			CONTRASENA=$( perl -e 'print crypt("$ ARGV[0]","\$$ ARGV[1]\$$ ARGV[2]\$")' $M_PASSWORD $AE $SALT_PASSWORD )
			if [[ "$CONTRASENA" = "$S_PASSWORD" ]]; then
				echo "Bienvenido $USERNAME"
				return $USERNAME
			else
				echo "Credenciales invalidas, inténtalo de nuevo"
				stty echo
				break
			fi
		else
			echo "Usuario no identificado, intentalo de nuez"
			stty echo
		fi
		stty echo
	done
}

login