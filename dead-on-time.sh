#!/bin/bash

#start screen

echo "Hello! You are about to play DEAD ON TIME! Type [start] whenever you're ready."

read  start

if [[ $start == "start" ]]; then
sleep 1
	echo "Alright! Let's begin..."
else
	echo "Type [start] to begin"

fi

read start

if [[ $start == "start" ]]; then
sleep 1
        echo "Alright! Let's begin..."
else
        echo "Type [start] to begin"

fi

read start

if [[ $start == "start" ]]; then
sleep 1
        echo "Alright! Let's begin..."
else
        echo "Wrong input again! Last chance..."

fi

read start

if [[ $start == "start" ]]; then
sleep 1
        echo "Alright! Let's begin..."
else
        echo "Can't even type the word 'start' properly, huh?"
	sleep 1
	echo " Well, I guess this game wasn't for you anyway..."
	exit 1

fi

#/start screen#

sleep 2
#intro#
echo "        __o"
echo "      _ \<_"
echo "(((  (_)/(_)"
 

#/intro#
