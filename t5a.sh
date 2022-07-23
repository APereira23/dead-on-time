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

hp_t5_pre=$carryhp4

time_t5_pre=$carrytime4

echo "PROGRESS: Home ................o-o......................... Work"
echo "HP: $hp_t5_pre"
echo "Time: $time_t5_pre"
sleep 3
echo "..."
sleep 1

#event

echo "There is a coffee shop on the side of the road."
sleep 2
echo "Right now you'd give just about anything for a cup of coffee,"
sleep 2
echo "but maybe there's no time..."
sleep 3
echo "(Keep moving [m] / Have a coffee [c])"

read input
sleep 1
echo "..."
sleep 1
echo "..."

if [[ $input == "m" ]]; then
	echo "You keep moving."
	sleep 2
	echo "No time to waste!"
	hp_t5_post=$hp_t5_pre
	time_t5_post=$time_t5_pre

	elif [[ $input == "c" ]]; then
		echo "You stop for a quick energy boost."
		sleep 2
		hpboost=$(( $RANDOM % 3 + 18 ))
		echo "+$hpboost hp"
		timedmg=$(( $RANDOM % 6 + 15 ))
		echo "-$timedmg time"
		hp_t5_post=$(( $hp_t5_pre + $hpboost ))
		time_t5_post=$(( $time_t5_pre - $timedmg ))

else

echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t5_post=$(( $hp_t5_pre - 30 ))
time_t5_post=$(( $time_t5_pre - 15 ))

fi
sleep 2
#failconditions

if [[ $hp_t5_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t5_post -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
echo "Press [enter] to continue"
fi

read key

#transition

carryhp5=$hp_t5_post
carrytime5=$time_t5_post

export carryhp5 carrytime5
./t6a.sh

sleep 1

echo $(bash t6a.sh)

exit 1

