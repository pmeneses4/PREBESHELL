while [ TRUE ]; do
	read -p "USUARIO:" USR
	USRPSS=$( cat /etc/shadow | grep $USR )
	SALT=$( echo $USRPSS | awk -F'$' '{print $3}') 
	ENCINP=$( mkpasswd -m sha-512 -S $SALT )
	res=$( echo $USRPSS | grep -c $ENCINP )
	if [ $res = "1" ]; then 
		echo "logged to $USR"
		break
	else
		echo "try again"
	fi
done

