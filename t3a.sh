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

hp_t3_pre=$carryhp2

time_t3_pre=$carrytime2

echo "PROGRESS: Home .........o-o................................ Work"
echo "HP: $hp_t3_pre"
echo "Time: $time_t3_pre"
sleep 3
echo "..."
sleep 1

echo "In order to escape a traffic jam, you cut into an alleyway".
sleep 2
echo "The alley is empty at the moment, except for one man."
sleep 3
echo "As you get closer, the man starts waving and asking you for help."
sleep 4
echo "He's raggedly looking and seems a tad crazed out."
sleep 3
echo "What do you do? Ignore him or try to help out?"
sleep 1
echo "(Ignore: [i] / Help: [h])"

read input
sleep 1
echo "..."
sleep 1
echo "..."

if [[ $input == "i" ]]; then
	echo "You move out of his way and keep moving, paying no attention to the man´s desperate cries."
	echo "There's no time for this 'videogame sidequest' nonsense... you're late for work!!"
	sleep 5
	timedmg=$(( 4 ))
	echo "-$timedmg time"
	hp_t3_post=$hp_t3_pre
	time_t3_post=$(( $time_t3_pre - $timedmg ))

	elif [[ $input == "h" ]]; then
		echo "You stop and ask the man what's wrong."
		sleep 2
		echo "He rushes towards you and, before you have time to react, grabs the handlebars of your bike and tries to push you off."
		sleep 5
		echo  "As you struggle to break free from the crazy old man, he keeps screaming"
		sleep 2
		echo "'SATAN'S COMING"
		echo "I GOTTA RUN"
		echo "SATAN IS COMING"
		echo "COMING FOR MEEEEEE!!!"
		sleep 4
		echo "The two of you struggle until you finally manage to push him away with a well placed kick to the gut."
		sleep 2
		hpdmg=$(( $RANDOM % 5 + 15 ))
		echo "-$hpdmg hp"
		timedmg=$(( $RANDOM % 10 + 10 ))
		echo "-$timedmg time"
		hp_t3_post=$(( $hp_t3_pre - $hpdmg ))
		time_t3_post=$(( $time_t3_pre - $timedmg ))
		sleep 5
		echo "..."
		echo "You get the hell away from that ungodly alley, and rethink your life choices."
		sleep 4
		echo "They say the road to hell is paved with good intentions..."
		sleep 4
		echo "...and apparently some people take advantage of the pavement to cycle their way back."

else

echo "Wrong key! You waver under the burden of choice, and fall off your bike."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t3_post=$(( $hp_t3_pre - 30 ))
time_t3_post=$(( $time_t3_pre - 15 ))

fi
sleep 2

#failconditions
if [[ $hp_t3_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t3_post -le 0 ]]; then
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

carryhp3=$hp_t3_post
carrytime3=$time_t3_post

export carryhp3 carrytime3
./t4a.sh

sleep 1

echo $(bash t4a.sh)

exit 1
