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

hp_t4_pre=$carryhp3

time_t4_pre=$carrytime3

echo "PROGRESS: Home ............o-o............................. Work"
echo "HP: $hp_t4_pre"
echo "Time: $time_t4_pre"
sleep 3
echo "..."
sleep 1

#event

echo "You approach an intersection."
sleep 2
echo "The light turns red right as you reach it."
sleep 3
echo "Do you stop or run the red light?"
sleep 1
echo "(Stop: [s] / Accelerate: [a])"

read input
sleep 1
echo "..."
sleep 1
echo "..."

if [[ $input == "s" ]]; then
	echo "Slow and steady wins the race."
	echo "Still having your head attached to your shoulders also helps."
	echo "You wait for the signal to turn green before you cross."
	sleep 5
	timedmg=$(( $RANDOM % 8 + 10 ))
        echo "-$timedmg time"
        hp_t4_post=$hp_t4_pre
        time_t4_post=$(( $time_t4_pre - $timedmg ))

	elif [[ $input == "a" ]]; then
		echo "You race through the intersection."
		sleep 2
		echo "There are cars coming your way!"
		#number game HARD

else

echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t4_post=$(( $hp_t4_pre - 30 ))
time_t4_post=$(( $time_t4_pre - 15 ))

fi
sleep 2

#failconditions

if [[ $hp_t4_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t4_post -le 0 ]]; then
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

carryhp4=$hp_t4_post
carrytime4=$time_t4_post

export carryhp4 carrytime4
./t5a.sh

sleep 1

echo $(bash t5a.sh)

exit 1
