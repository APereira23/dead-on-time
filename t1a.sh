#!/bin/bash

echo $(clear)
echo "PROGRESS: Home ..o-o....................................... Work"
echo "HP: 100"
echo "Time: 100"
hp_t1_pre=$(( 100 ))
time_t1_pre=$(( 100 ))

sleep 0
echo "..."
sleep 0
echo "You spot a couple of kids playing football down the street"
sleep 0
echo "You know those little rapscallions, and they are never up to any good."
sleep 0
echo "Do you speed past them, or do you slow down and say 'hi'?"
echo "(Fast: [f] / Slow: [s])"
read input

if [[ $input == "f" ]]; then
	sleep 1
	echo "You speed up and ring the bell to keep those pesky kids away while you fly past them."
	sleep 3
	echo "One of the brats feels disrespected by your action and starts looking at you as if you were a moving target."
	sleep 4
	echo "He picks the ball and shoots it like he's Roberto Carlos in '97..."
	sleep 4
	echo "..."
	sleep 2
	echo "..."
	kid=$(( $RANDOM % 2 ))
	if [[ $kid == 1 ]]; then
		hpdmg=$(( $RANDOM % 16 + 10 ))
		timedmg=$(( $RANDOM % 10 + 5 ))
		echo "The ball hits the front wheel with full force, causing you to fall down as the kids run away laughing."
		sleep 3
		echo "-$hpdmg hp"
		hp_t1_post=$(( $hp_t1_pre - $hpdmg ))
		echo "-$timedmg time"
		time_t1_post=$(( $time_t1_pre - $timedmg ))
		echo "current hp: $hp_t1_post"
		echo "current time: $time_t1_post"

		elif [[ $kid == 0 ]]; then
			echo "..."
			sleep 2
			echo "Miss!"
			hp_t1_post=$hp_t1_pre
			time_t1_post=$time_t1_pre
			echo "current hp: $hp_t1_post"
                	echo "current time: $time_t1_post"

	fi

	elif [[ $input == "s" ]]; then
		echo "you pressed s!"

else
echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-20 time"
hp_t1_post=$(( $hp_t1_pre - 30 ))
time_t1_post=$(( $time_t1_pre - 20 ))
echo "current hp: $hp_t1_post"
echo "current time: $time_t1_post"

fi


