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

echo "Starting game..."
sleep 1
echo "..."
sleep 1
echo "It's monday morning and you are late for work!!!"
sleep 3
echo "Still half asleep, you jump up from bed, hastingly put on some clothes and rush to the door"
sleep 5
echo "Just before you leave, you remember there's still some coffee from the previous evening"
sleep 6
echo "With no time to lose, you drink the remaining cold coffee from the pot in one fell swoop."
sleep 3
echo "Disgusting! But you need the energy for the road ahead"
sleep  4
echo  "(HP +60!)"
sleep 3
echo "Outside, you hop on your bicycle and start pedaling away"
sleep 3
echo "Will you get to work on time?"
sleep 3
echo "Will you even make it there?"
sleep 3
echo "Everything's up to you..."
sleep 3
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
HP=$(( 60 ))
carry=$HP

export carry
./t1a.sh

echo $(bash t1a.sh)

exit 1

