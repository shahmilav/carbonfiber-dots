function app
	open -a $argv
end

function todo
	echo "- $argv" >> ~/todo
end


