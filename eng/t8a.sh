#!/bin/bash

echo $(clear)
sleep 1
echo "        __o"
echo "      _ \<_"
echo "(((  (_)/(_)"
sleep 2
echo "..."
echo "             __o"
echo "           _ \<_"
echo "     (((  (_)/(_)"
sleep 1
echo "..."
echo "                  __o"
echo "                _ \<_"
echo "          (((  (_)/(_)"
sleep 1
echo "..."
sleep 1
echo $(clear)


if [[ $pass == "jump" ]]; then
	hp_t8_pre=$carryhp6
	time_t8_pre=$carrytime6

else

hp_t8_pre=$carryhp7
time_t8_pre=$carrytime7

fi

echo "PROGRESS: Home ............................o-o............. Work"
echo "HP: $hp_t8_pre"
echo "Time: $time_t8_pre"
sleep 3
echo "..."
sleep 1

#event
echo "A moving truck has parked on the cycling lane."
sleep 2
echo "You ring the bell but the driver tells you to bug off."
sleep 4
echo "..."
sleep 1
echo "You lose some time by having to go around the truck, and a little amount of HP"
echo "due to the cardiovascular strain of shouting profanities back at the truck driver."
sleep 3
echo "..."
sleep 1
hpdmg=$(( $RANDOM % 5 + 2 ))
timedmg=$(( $RANDOM % 5 + 2 ))
echo "-$hpdmg hp"
echo "-$timedmg time"
hp_t8_post=$(( $hp_t8_pre - $hpdmg ))
time_t8_post=$(( $time_t8_pre - $timedmg ))

#failconditions

if [[ $hp_t8_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t8_post -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
echo "Press [enter] to continue"
fi


#transition

read key

carryhp8=$hp_t8_post
carrytime8=$time_t8_post

export carryhp8 carrytime8
./t9a.sh

sleep 1

echo $(bash t9a.sh)

exit 1

