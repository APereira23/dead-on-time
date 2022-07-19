#!/bin/bash

#start screen

echo "Hello! You are about to play DEAD ON TIME! Type [start] whenever you're ready."

read  start

if [[ $start == "start" ]]; then
sleep 1
	echo "Alright! Let's begin..."
else
        echo "Can't even type the word 'start' properly, huh?"
	sleep 1
	echo " Well, I guess this game wasn't for you anyway..."
	sleep 2
		exit 1

fi

sleep 2

#intro#
echo "loading..."
echo "        __o"
echo "      _ \<_"
echo "(((  (_)/(_)"
sleep 3
echo "loading..."
echo "             __o"
echo "           _ \<_"
echo "     (((  (_)/(_)"
sleep 2
echo "loading..."
echo "                  __o"
echo "                _ \<_"
echo "          (((  (_)/(_)"
sleep 2
echo "..."
sleep 1

#c.1#


#hp-10
#jump or stop
#jump(-10hp) stop (-3hp)


echo "You spot a HUGE pot hole on the road ahead. Do you jump over ir, or cautiously circle around?"
echo "(jump) or (circle)"

read p1

pothole=$(( $RANDOM % 100 ))

if [[ $p1 == "jump" ]]; then
	sleep 1
	echo "jumping......."
	sleep 2
else
	sleep 2
	echo "too afraid to jump? Booooriiiing..."
	sleep 1
	exit 1
fi

if [[ $pothole -le 33 ]]; then
	sleep 1
	echo "pothole rolls" $pothole
	sleep 1
	echo "you jump successfully! No damage received"
	elif [[ $pothole -le 66 ]]; then
		sleep 1
		echo "pothole rolls" $pothole
		sleep 1
		echo "you manage to land the jump but damage your bike. -3hp"
	else
		sleep 1
		echo "pothole rolls" $pothole
		sleep 1
		echo "you fall on your head and die. GAME OVER"

fi

























