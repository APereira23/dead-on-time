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

hp_t6_pre=$carryhp5

time_t6_pre=$carrytime5

echo "PROGRESS: Home ...................o-o...................... Work"
echo "HP: $hp_t6_pre"
echo "Time: $time_t6_pre"
sleep 3
echo "..."
sleep 1

#event

echo "You pull up at a red light."
sleep 2
echo "A street musician is performing in front of the stopped traffic,"
sleep 1
echo "playing a solo saxophone rendition of 'Despacito'."
sleep 3
echo "Right before the traffic lights open, he asks you for some change."
sleep 3
echo "(Give money [g] / Run away [r])"
read input

sleep 1
echo "..."
sleep 2

if [[ $input == "r" ]]; then
	echo "You pretend that you don't have any change on you, and quickly get away."
	hp_t6_post=$hp_t6_pre
	time_t6_post=$time_t6_pre

	elif [[ $input == "g" ]]; then
		echo "You take a few coins from your wallet and hand them out."
		sleep 2
		echo "The musician thanks you profusely."
		sleep 3
		echo "Before leaving, he warns that the road ahead is blocked due to maintenance work,"
		echo "and tells you about an alternate route you can take."
		sleep 3
		timedmg=$(( $RANDOM % 4 + 5 ))
		echo "-$timedmg time"
		echo "-obstacle avoided!"
		hp_t6_post=$hp_t6_pre
		time_t6_post=$(( $time_t6_pre - $timedmg ))

else

echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t6_post=$(( $hp_t6_pre - 30 ))
time_t6_post=$(( $time_t6_pre - 15 ))

fi
sleep 2

#failconditions

if [[ $hp_t6_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t6_post -le 0 ]]; then
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


carryhp6=$hp_t6_post
carrytime6=$time_t6_post

if [[ $input == "g" ]]; then
	
	pass="jump"

	export carryhp6 carrytime6 pass
	./t08e.sh

	sleep 1
	echo $(bash t08e.sh)

else

export carryhp6 carrytime6
./t07e.sh

sleep1
echo $(bash t07e.sh)

fi

exit 1
