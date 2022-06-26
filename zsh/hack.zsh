function hack() {

	# Safety Check
	if [[ "$2" == "PASS" ]]
	then
		# User is sucessfully validated.
		echo "Welcome $USER";
	else
		echo "Incorrect Password. Self Destructing in";
		echo "3";
		sleep 1;
		echo "2";
		sleep 1;
		echo "1";
		sleep 1;
		echo "0. Self Destructing...";
		return false;
	fi


}
