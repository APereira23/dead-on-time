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

hp_t2_pre=$carryhp

time_t2_pre=$carrytime

echo "PROGRESS: Home ......o-o................................... Work"
echo "HP: $hp_t2_pre"
echo "Time: $time_t2_pre"
sleep 3
echo "..."
sleep 1
echo "You scare a flock of pigeons off the cycling lane. They do not take kindly to threats and assume an attacking formation, carpet bombing you with poop."
sleep 6
echo "DODGE THE POOP"
sleep 3
echo "Type the correct combination of numbers, in the order they will be shown, to successfully perform the designated action."
sleep 6
echo "Ready?"
sleep 2
echo "3"
sleep 1
echo "2"
sleep 1
echo "1"
sleep 1
echo "Memorize the pattern!"
sleep 1

echo $(clear)
sleep 1
n1=$(( $RANDOM % 10 ))
echo "$n1"
sleep 1

echo $(clear)
n2=$(( $RANDOM % 10 ))
echo "		$n2"
sleep 1

echo $(clear)
n3=$(( $RANDOM % 10 ))
echo "$n3"
sleep 1

echo $(clear)
n4=$(( $RANDOM % 10 ))
echo "		$n4"
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
	echo "Well done!!"
	sleep 2
	echo "You zig zaged your way out of a shitty predicament."
	sleep 2
	timedmg=$(( $RANDOM % 3 + 2 ))
	echo "-$timedmg time"
	hp_t2_post=$hp_t2_pre
	time_t2_post=$(( $time_t2_pre - $timedmg ))

else
echo "Fail!"
sleep 2
echo "One of the pigeons lands a perfect headshot."
sleep 2
echo "Critical hit!"
sleep 2
hpdmg=$(( $RANDOM % 10 + 15 ))
timedmg=$(( $RANDOM % 5 + 3 ))
echo "-$hpdmg hp"
echo "-$timedmg time"
hp_t2_post=$(( $hp_t2_pre - $hpdmg ))
time_t2_post=$(( $time_t2_pre - $timedmg ))

fi

sleep 2
#failstate!! hp=0 || time=0
if [[ $hp_t2_post -le 0 ]]; then
	echo "You fainted."
	sleep 2
	echo "GAME OVER"
	sleep 3
	exit 1
	
	elif [[ $time_t2_post -le 0 ]]; then
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

carryhp2=$hp_t2_post
carrytime2=$time_t2_post

export carryhp2 carrytime2
./t3a.sh

sleep 1

echo $(bash t3a.sh)

exit 1
