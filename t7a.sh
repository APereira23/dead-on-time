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


hp_t7_pre="50" #$carryhp6
time_t7_pre="50" #$carrytime6

echo "PROGRESS: Home .....................o-o.................... Work"
echo "HP: $hp_t7_pre"
echo "Time: $time_t7_pre"
sleep 3
echo "..."
sleep 1

#event
echo "..."
sleep 2
echo "The road ahead is closed due to roadworks!"
sleep 2
echo "Do you turn back and take another route, or do you risk it and jump the barricades?"
sleep 3
echo "(Turn back [b] / Keep moving [m])"
read input

sleep 1
echo "..."
sleep 2

if [[ $input == "b" ]]; then
	echo "You turn back."
	sleep 1
	echo "Playing it safe this time!"
	sleep 2
	timedmg=$(( $RANDOM % 6 + 15 ))
	echo "-$timedmg time"
	hp_t7_post=$hp_t7_pre
	time_t7_post=$(( $time_t7_pre - $timedmg ))

	elif [[ $input == "m" ]];then
		echo "Hell yeah, Rock n' Roll!"
		sleep 2
		echo "You've come this far already, no point in slowing down now."
		sleep 2
		echo "You go through the barricades."
		sleep 4
		echo "The construction workers aren't finding it funny..."
		sleep 4
		echo "..."
		sleep 2
		echo "They're coming for you!!"
		sleep 5
		echo $(clear)
		echo "Get away!"
		sleep 1
		echo "(A series of numbers will flash on your screen."
		echo "Type the correct combination of numbers, in the right order,"
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
		echo "$n1"
		sleep 1

		echo $(clear)
		n2=$(( $RANDOM % 10 ))
		echo "          		$n2"
		sleep 1

		echo $(clear)
		n3=$(( $RANDOM % 10 ))
		echo "		$n3"
		sleep 1

		echo $(clear)
		n4=$(( $RANDOM % 10 ))
		echo "          	$n4"
		sleep 1

		echo $(clear)
		n5=$(( $RANDOM % 10 ))
		echo "					$n5"
		sleep 1

		echo $(clear)
		n6=$(( $RANDOM % 10 ))
		echo "$n6"
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
		if [[ $numbers == "$n1$n2$n3$n4$n5$n6" ]]; then
		        echo "Nice moves!"
		        sleep 2
		        echo "You escape being turned into a human pinnata."
		        sleep 2
		        timedmg=$(( $RANDOM % 3 + 2 ))
		        echo "-$timedmg time"
		        hp_t7_post=$hp_t7_pre
		        time_t7_post=$(( $time_t7_pre - $timedmg ))
		else
		echo "Fail!"
		sleep 2
		echo "The workers surround you and tackle you off your bike."
		sleep 1
		echo "You hear someone say"
		echo "'These ******* cyclists always think they can do whatever the hell they want!'"
		sleep 2
		echo "'It's time someone gave'em a lesson.'"
		sleep 2
		echo "..."
		sleep 1
		echo "You get a steel-toe boot driven through your nose."
		sleep 3
		echo "..."
		sleep 1
		echo "Meanwhile some passersby are laughing and telling you to get a car like normal people."
		sleep 3
		hpdmg=$(( $RANDOM % 7 + 20 ))
		timedmg=$(( $RANDOM % 6 + 10 ))
		echo "-$hpdmg hp"
		echo "-$timedmg time"
		hp_t7_post=$(( $hp_t7_pre - $hpdmg ))
		time_t7_post=$(( $time_t7_pre - $timedmg ))
		fi
else

echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t7_post=$(( $hp_t6_pre - 30 ))
time_t7_post=$(( $time_t6_pre - 15 ))

fi
sleep 2

#failconditions

if [[ $hp_t7_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t7_post -le 0 ]]; then
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

carryhp7=$hp_t7_post
carrytime7=$time_t7_post

export carryhp7 carrytime7
./t8a.sh

sleep 1

echo $(bash t8a.sh)

exit 1

