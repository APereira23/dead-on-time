#!/bin/bash

echo $(timidity bicycle-race) &
echo "playing..."

sleep 4



sleep 2
echo "Hello! I'm Bob!  What's your name?"
read name

sleep 2

echo "Hello $name!"

sleep 4
echo "Do you know which band composed the song you're listening to?"

read band

if [[ $band == "Queen" || $band == "queen" ]]; then
	sleep 2
	echo "YOur answer is..."
	sleep 2
	echo "Correct!!!"

else
sleep 2
echo "hum..."
sleep 2
echo "You're not really sure, are you?"


fi



