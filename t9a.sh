#!/bin/bash

#load

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

hp_t9_pre=$carryhp8

time_t9_pre=$carrytime8

echo "PROGRESS: Home ................................o-o......... Work"
echo "HP: $hp_t9_pre"
echo "Time: $time_t9_pre"
sleep 3
echo "..."
sleep 1

#event

echo "You see a kitten on the sidewalk!"
sleep 2
echo "Will you stop and pet it?"
sleep 1
echo "(Stop [s] / Keep moving [m])"
read input

sleep 1
echo "..."
sleep 1

if [[ $input == "s" ]]; then
	echo "You approach the cat."
	sleep 1
	echo "..."
	sleep 1
	echo "He's friendly!"
	sleep 2
	echo $(clear)
	sleep 1
	echo $(timidity ./sound/kitty.mid)&
	echo " /\_/\ "
	echo "( ^.^ )"
	echo " > ' < "
	sleep 2
	echo $(clear)
	echo "		 /\_/\ "
	echo "		( ^.^ )"
	echo "		 > ' < "
	sleep 2
	wait
	echo $(clear)
	sleep 2
	echo "Your dark soul is filled with light, and you recover the will to carry on."
	sleep 3
	echo "+20 hp!"
	echo "-10 time"
	hp_t9_post=$(( $hp_t9_pre + 20 ))
	time_t9_post=$(( $time_t9_pre - 10 ))
	
	elif [[ $input == "m" ]]; then
		echo "You ignore the kitten and keep moving."
		sleep 2
		echo "..."
		sleep 1
		echo "You lose a small amount of HP due to having an empty hole where your heart should be."
		sleep 2
		echo "-5 hp"
		hp_t9_post=$(( $hp_t9_pre - 5 ))
		time_t9_post=$time_t9_pre

else 

echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t9_post=$(( $hp_t9_pre - 30 ))
time_t9_post=$(( $time_t9_pre - 15 ))

fi
#failconditions

if [[ $hp_t9_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t9_post -le 0 ]]; then
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

carryhp9=$hp_t9_post
carrytime9=$time_t9_post

export carryhp10 carrytime10
./t10a.sh

sleep 1

echo $(bash t10a.sh)

exit 1
