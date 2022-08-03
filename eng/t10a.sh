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

hp_t10_pre=$carryhp9

time_t10_pre=$carrytime9

echo "PROGRESS: Home .....................................o-o.... Work"
echo "HP: $hp_t10_pre"
echo "Time: $time_t10_pre"
sleep 3
echo "..."
sleep 1

#event

echo "As you approach the final stretch of the journey, you find yourself in yet another traffic jam!"
sleep 4
echo "Rush hour is a nightmare..."
sleep 2
echo "You're stuck in traffic and losing precious time."
echo "You need to make a critical decision..."
sleep 4
echo "(Cut through traffic [t] / Cut through the sidewalk [s])"
read input

sleep 1
echo "..." 
sleep 1

if [[ $input == "t" ]]; then
	echo "Decisions were made."
	sleep 2
	echo "You risk it all and cut through the stationary traffic, zig-zagging around every lane on the road."
	sleep 3
	echo "Can you make it to the end of the street?"
	sleep 2
	echo "..."
	sleep 1
	echo $(clear)
	sleep 1
	echo "(You know the drill. Type the correct combination of numbers, in the right order,"
	echo "to successfully perform the designated action.)"
	sleep 6
	echo "Ready?"
	sleep 5
	echo $(clear)
	sleep 1
	echo "Memorize the pattern!"
	sleep 2

	echo $(clear)
        sleep 2
        n1=$(( $RANDOM % 10 ))
        echo "		$n1"
       	sleep 1

        echo $(clear)
        n2=$(( $RANDOM % 10 ))
        echo "          		                $n2"
        sleep 1

        echo $(clear)
        n3=$(( $RANDOM % 10 ))
        echo "   				     $n3"
        sleep 1

        echo $(clear)
        n4=$(( $RANDOM % 10 ))
        echo "    $n4"
        sleep 1

        echo $(clear)
        n5=$(( $RANDOM % 10 ))
        echo "                               $n5"
        sleep 1

        echo $(clear)
        n6=$(( $RANDOM % 10 ))
        echo "							$n6"
        sleep 1

	echo $(clear)
	n7=$(( $RANDOM % 100 ))
	echo "		$n7"
        sleep 1

	echo $(clear)
        sleep 1
        echo "Type the numbers shown in the correct order."
        sleep 1
        read numbers
        sleep 1
        echo "..."
        sleep 1
        echo "..."
        sleep 1
	if [[ $numbers == "$n1$n2$n3$n4$n5$n6$n7" ]]; then
                echo "Well done!"
                sleep 2
                echo "You're almost there!"
                sleep 2
                timedmg=$(( $RANDOM % 3 + 3 ))
                echo "-$timedmg time"
                hp_t10_post=$hp_t10_pre
                time_t10_post=$(( $time_t10_pre - $timedmg ))
        else
	echo "Fail!"
	sleep 2
	echo "You smash into a TukTuk filled with tourists and land right in the lap of panicked german lady."
	sleep 3
	echo "..."
	sleep 1
	echo "You manage to get back on your bike and get away. All the while, the german lady keeps yelling"
	sleep 1
	echo "'Du Arschloch!! Hustensaftschmuggler!!! Verpiss dich!!!!'"
	sleep 5
	echo "Good thing you don't know german."
	sleep 3
	hpdmg=$(( $RANDOM % 6 + 15 ))
	timedmg=$(( $RANDOM % 6 + 10 ))
	echo "-$hpdmg hp"
	echo "-$timedmg time"
	hp_t10_post=$(( $hp_t10_pre - $hpdmg ))
	time_t10_post=$(( $time_t10_pre - $timedmg ))
	fi
	
else

echo "Decisions were made."
sleep 2
echo "With nothing left to lose, you cut to the sidewalk and speed past the angry pedestrians."
sleep 3
echo "Can you make it to the end of the street?"
sleep 4
echo "..."
sleep 1
echo $(clear)
sleep 1
echo "(You know the drill. Type the correct combination of numbers, in the right order,"
echo "to successfully perform the designated action.)"
sleep 6
echo "Ready?"
sleep 3
echo $(clear)
sleep 1
echo "Memorize the pattern!"
sleep 2

echo $(clear)
sleep 2
n1=$(( $RANDOM % 10 ))
echo "          $n1"
sleep 1

echo $(clear)
n2=$(( $RANDOM % 10 ))
echo "                                          $n2"
sleep 1

echo $(clear)
n3=$(( $RANDOM % 10 ))
echo "                                       $n3"
sleep 1

echo $(clear)
n4=$(( $RANDOM % 10 ))
echo "        $n4"
sleep 1

echo $(clear)
n5=$(( $RANDOM % 10 ))
echo "$n5"
sleep 1

echo $(clear)
n6=$(( $RANDOM % 10 ))
echo "       				   $n6"
sleep 1

echo $(clear)
n7=$(( $RANDOM % 100 ))
echo "				$n7"
sleep 1

echo $(clear)
sleep 1
echo "Type the numbers shown in the correct order."
sleep 1
read numbers
sleep 1
echo "..."
sleep 1
echo "..."
sleep 1

	if [[ $numbers == "$n1$n2$n3$n4$n5$n6$n7" ]]; then
	        echo "Well done!"
	        sleep 2
	        echo "You managed not to kill anyone while also not killing yourself."
		echo "Try not to make a habit out of it, though!"
	        sleep 4
	        timedmg=$(( $RANDOM % 3 + 3 ))
	        echo "-$timedmg time"
	        hp_t10_post=$hp_t10_pre
	        time_t10_post=$(( $time_t10_pre - $timedmg ))

	else
	echo "Fail!"
	sleep 2
	echo "You try to move away from an old lady and get run over by a guy riding a scooter"
	sleep 3
	hpdmg=$(( $RANDOM % 9 + 15 ))
	timedmg=$(( $RANDOM % 6 + 15 ))
	echo "-$hpdmg hp"
	echo "-$timedmg time"
	hpdmg=$(( $hp_t10_pre - $hpdmg ))
	timedmg=$(( $time_t10_pre - $timedmg ))
	sleep 3
	echo "The guy in the scooter yells at you as he goes away."
	sleep 1
	echo "...As if he had any more right to be riding that thing there!"
	sleep 2
	hp_t10_post=$(( $hp_t10_pre - $hpdmg ))
	time_t10_post=$(( $time_t10_pre - $timedmg ))
	fi
fi

#failconditions

if [[ $hp_t10_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t10_post -le 0 ]]; then
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

carryhp10=$hp_t10_post
carrytime10=$time_t10_post


export carryhp10 carrytime10
./t11a.sh
sleep 1

echo $(bash t11a.sh)

exit 1
