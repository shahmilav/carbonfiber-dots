function app --description 'Open an app'
	open -a $argv
end

function todo --description 'Add en entry into the todo list'
	echo "- $argv" >> ~/todo
end

function hack --description 'Hack someone'

	# Safety Check
	switch $argv 
	case "op-deltasigma6@"
		# User is sucessfully validated.
		echo "Welcome $USER";
		echo "Hacking into the mainframe...";
		sleep 4;
		say "Welcome: what would you like to do?";
		sleep 6;
		say "Operation DELTA SIGMA SIX: init: ";
		echo "ΔΣ6 is a go. Launching...";
		sleep 2;
		say "DeltaSigma6 Launched. Hacking";
	case "*"	
		say "Incorrect Password. Self Destructing in";
		say "3";
		sleep 1;
		say "2";
		sleep 1;
		say "1";
		sleep 1;
		say "0. Self Destructing...";
		return false;
	end	

end
