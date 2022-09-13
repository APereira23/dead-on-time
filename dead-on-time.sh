#!/bin/bash

echo $(clear)

echo "Hello! You are about to play DEAD ON TIME! Press [enter] whenever you're ready."

read  start
sleep 1
echo "Alright! Let's begin..."
sleep 3
export start
./t00e.sh
echo $(bash t00e.sh)

exit 1
