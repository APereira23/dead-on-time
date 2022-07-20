#!/bin/bash


#roll generator

roll=$(( $RANDOM % 256 ))



echo $roll

echo "--------------------"

#event simulation

echo "event testing"

hp_ev1_pre=$(( 100 ))

hp_ev1_pos=$(( $hp_ev1_pre - $roll ))

echo "Current HP - $hp_ev1_pre"
sleep 1
echo "you have been hit for $roll hit points"
sleep 1

if [[ $hp_ev1_pos -le 0 ]];then
        echo "YOU DIED. GAME OVER"
	exit 1
else
echo "Current HP - $hp_ev1_pos"
fi

carry=$hp_ev1_pos
export carry
./test2.sh

sleep 1

echo $(bash test2.sh)

exit 1
