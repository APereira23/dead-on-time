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
echo "Current HP - $hp_ev1_pos"

carry=$hp_ev1_pos
export carry
./test2.sh

sleep 1

echo $(bash test2.sh)

exit 1
