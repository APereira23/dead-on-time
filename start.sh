#!/bin/bash

echo $(clear)

echo "Hello! You are about to play DEAD ON TIME! Press [enter] whenever you're ready."

read  start
sleep 1
echo "Alright! Let's begin..."
sleep 1
echo "Please choose a language:"
echo ""
echo "English (default) = type [e]"
echo "Portuguese = type [p]"
sleep 1
read language
sleep 1
echo "..."
echo $(clear)
if [[ $language == "e" ]]; then
	export start
	./t00e.sh
	echo $(bash t00e.sh)
	echo $(clear)
	elif [[ $language == "p" ]]; then
		export start
		./t00p.sh
		echo $(bash t00p.sh)
		echo $(clear)
	
else
echo "Wrong key! Try again!"
sleep 1
exit 1
fi
