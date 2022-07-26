#!/bin/bash

echo $(clear)
echo "PROGRESS: Home ..o-o....................................... Work"
echo "HP: 100"
echo "Time: 100"
hp_t1_pre=$(( 100 ))
time_t1_pre=$(( 100 ))

sleep 3
echo "..."
sleep 1
echo "You spot a couple of kids playing football down the street."
sleep 3
echo "You know those little rapscallions, and they are never up to any good."
sleep 3
echo "Do you speed past them, or do you slow down and say 'hi'?"
echo "(Fast: [f] / Slow: [s])"
read input

if [[ $input == "f" ]]; then
	sleep 1
	echo "You speed up, ringing the bell in order to keep those pesky kids away while you fly past them."
	sleep 3
	echo "One of the brats feels disrespected by your action."
	sleep 2
	echo "He starts looking at you as if you were a moving target..."
	sleep 6
	echo "He picks the ball and shoots it like he's Roberto Carlos in '97."
	sleep 4
	echo "..."
	sleep 2
	echo "..."
	kid=$(( $RANDOM % 2 ))
	if [[ $kid == 1 ]]; then
		hpdmg=$(( $RANDOM % 11 + 15 ))
		timedmg=$(( $RANDOM % 6 + 10 ))
		echo "The ball hits the front wheel with full force, causing you to fall down as the kids run away laughing."
		sleep 3
		echo "-$hpdmg hp"
		hp_t1_post=$(( $hp_t1_pre - $hpdmg ))
		echo "-$timedmg time"
		time_t1_post=$(( $time_t1_pre - $timedmg ))

		elif [[ $kid == 0 ]]; then
			echo "..."
			sleep 2
			echo "Miss!"
			sleep 1
			echo "It must be your lucky day."
			hp_t1_post=$hp_t1_pre
			time_t1_post=$time_t1_pre

	fi

	elif [[ $input == "s" ]]; then
		sleep 1
		echo "You remember the golden rule from your playground days: 'keep your friends close, but keep the bullies closer'."
		echo "You slow down and say 'Hey! How's it going?' to the brats."
		sleep 4
		echo "They wave at you and go about their business."
		sleep 2
		timedmg=$(( 15 ))
		echo "-$timedmg time"
		hp_t1_post=$hp_t1_pre
		time_t1_post=$(( $time_t1_pre - $timedmg ))

else
echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t1_post=$(( $hp_t1_pre - 30 ))
time_t1_post=$(( $time_t1_pre - 15 ))

fi
echo "..."
echo "Press [enter] to continue"
read key


carryhp=$hp_t1_post
carrytime=$time_t1_post

export carryhp carrytime
./t02e.sh

sleep 1

echo $(bash t02e.sh)

exit 1
