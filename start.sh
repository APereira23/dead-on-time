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
sleep 1
if [[ $language == "e" ]]; then
	echo $(bash ./eng/dead-on-time.sh)
		elif [[ $language == "p" ]]; then
			echo $(bash ./por/dead-on-time.sh)

else
echo "Wrong key! Try again!"
sleep 1
exit 1

fi
