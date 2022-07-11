#!/opt/homebrew/bin/zsh

function hack() {
	USAGE="hack NAME PASSWORD"

	# Safety Check
	if [[ "$2" == "#op-deltasigma6@" ]]
	then
		# User is sucessfully validated.
		echo "Welcome $USER";
		echo "Hacking into the mainframe...";
		sleep 4;
		echo "Welcome: what would you like to do?";
		sleep 6;
		echo "Operation DELTA SIGMA SIX: init: ";
		echo "ΔΣ6 is a go. Launching...";
		sleep 2;
		echo "DeltaSigma6 Launched. Hacking $1";
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
