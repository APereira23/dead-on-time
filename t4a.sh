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
	timedmg=$(( $RANDOM % 6 + 16 ))
        echo "-$timedmg time"
        hp_t4_post=$hp_t4_pre
        time_t4_post=$(( $time_t4_pre - $timedmg ))

	elif [[ $input == "a" ]]; then
		echo "You race through the intersection."
		sleep 2
		echo "..."
		sleep 1
		echo "There are cars coming your way!!!"
		#number game HARD
		
		echo "DODGE THE INCOMING TRAFFIC"
		sleep 3
		echo "(Type the correct combination of numbers, in the right order, to successfully perform the designated action.)"
		sleep 6
		echo "Ready?"
		sleep 2
		echo $(clear)
		sleep 1
		echo "Memorize the pattern!"
		sleep 2

		echo $(clear)
		sleep 2
		n1=$(( $RANDOM % 10 ))
		echo "$n1"
		sleep 1

		echo $(clear)
		n2=$(( $RANDOM % 10 ))
		echo "          $n2"
		sleep 1

		echo $(clear)
		n3=$(( $RANDOM % 10 ))
		echo "$n3"
		sleep 1

		echo $(clear)
		n4=$(( $RANDOM % 10 ))
		echo "          $n4"
		sleep 1

		echo $(clear)
		n5=$(( $RANDOM % 10 ))
		echo "$n5"
		sleep 1

		echo $(clear)
		n6=$(( $RANDOM % 10 ))
		echo "          $n6"
		sleep 1

		echo $(clear)
                n7=$(( $RANDOM % 10 ))
                echo "$n7"
                sleep 1

		echo $(clear)
                n8=$(( $RANDOM % 10 ))
                echo "          $n8"
                sleep 1

		echo $(clear)
                n9=$(( $RANDOM % 10 ))
                echo "$n9"
                sleep 1
		echo $(clear)
		
		sleep 1
		echo "Type the numbers in the correct order."
		sleep 1
		read numbers
		sleep 1
		echo "..."
		sleep 1
		echo "..."
		sleep 1

		if [[ $numbers == "$n1$n2$n3$n4$n5$n6$n7$n8$n9" ]]; then
        		echo "Incredible!!"
        		sleep 2
        		echo "You channel your inner UberEats Driver and manage to escape certain death with a series of lightning-quick dodges."
        		sleep 3
        		timedmg=$(( $RANDOM % 3 + 3 ))
        		echo "-$timedmg time"
        		hp_t4_post=$hp_t4_pre
        		time_t4_post=$(( $time_t4_pre - $timedmg ))
			sleep 2
			echo "Don't get cocky, though, you may not be so lucky next time!"
			sleep 2

		else
		echo "Fail!"
		sleep 2
		echo "You're struck by a speeding car. You smash into the windshield and fall on your face on the concrete."
		sleep 2
		echo "There was a crackling noise. You're not sure if it was the bicycle or your femur."
		sleep 2
		echo "Also blood. Lots of blood."
		sleep 2
		timedmg=$(( $RANDOM % 3 + 10 ))
                hpdmg=$(( $RANDOM % 20 + 25 ))
		echo "-$hpdmg hp"
		echo "-$timedmg time"
                hp_t4_post=$(( $hp_t4_pre - $hpdmg ))
                time_t4_post=$(( $time_t4_pre - $timedmg ))
		sleep 2

		fi

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
