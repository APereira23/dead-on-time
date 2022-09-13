#!/bin/bash


hp_t11=50 #$carryhp10

time_t11=40  #$carrytime10

echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11"
echo "Time: $time_t11"
sleep 3
echo "..."
sleep 1

#event

#round-start--------------------------------------------------------------------
bosshp=5
        sleep 3
echo ""
echo "(The cabbie is trying to ram you down. Evade his attacks!"
echo "Pay attention to the numbers coming from the cab's direction."
echo "If you're successful, he will miss and crash, giving you a chance to strike back!)"
sleep 11
echo "..."
sleep 1


for (( ; ; ))
do

	echo $(clear)
	echo "PROGRESS: Home ........................................o-o. Work"
	echo "HP: $hp_t11"
	echo "Time: $time_t11"
	echo ""
	if [[ $bosshp == 5 ]]; then
	        boss="[################################################]"
	                elif [[ $bosshp == 4 ]]; then
	                        boss="[####################################            ]"
	                                elif [[ $bosshp == 3 ]]; then
	                                        boss="[############################                    ]"
	                                                elif [[ $bosshp == 2 ]]; then
	                                                        boss="[################                                ]"

	                                                                elif [[ $bosshp == 1 ]]; then 
	                                                                        boss="[#####                                           ]"

	else
	boss="[                                                ]"
	echo "TAXI DRIVER $boss"
	echo ""
	echo ""
	sleep 2
	echo "V I C T O R Y   A C H I E V E D"
	sleep 6

	carryhp11=$hp_t11
	carrytime11=$time_t11

	export carryhp11 carrytime11
	./t12e.sh
	sleep 1
	echo $(bash t12e.sh)
	exit 1
	fi

	echo "TAXI DRIVER $boss"
	sleep 3
	echo ""
	echo "Ready?"
	sleep 1
	echo ""
	echo "Here he comes!" 
	sleep 2

	echo $(clear)
	echo "PROGRESS: Home ........................................o-o. Work"
	echo "HP: $hp_t11"
	echo "Time: $time_t11"
	echo ""
	echo "TAXI DRIVER $boss"
	echo ""
	sleep 1

	echo $(clear)
	sleep 1
	n1=$(( $RANDOM % 1000 ))
	echo "                                    $n1"
	sleep 1
	echo $(clear)
	sleep 1
	n2=$(( $RANDOM % 1000 )) 
	echo "               $n2"
	sleep 1
	echo $(clear)
	sleep 1
	n3=$(( $RANDOM % 100 ))
	echo "				$n3"
	sleep 1

	echo $(clear)
	echo "PROGRESS: Home ........................................o-o. Work"
	echo "HP: $hp_t11"
	echo "Time: $time_t11"
	echo ""
	echo "TAXI DRIVER $boss"
	echo ""
	sleep 1
	echo "Type the code"
	read code
	sleep 2
	echo "..."
	sleep 2
	if [[ $code == "$n1$n2$n3" ]]; then
	        echo "Well done! The cab crashed. Now is your chance!"
	        sleep 2
	        echo "Choose your attack:"
	        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
	        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
	        read attack
	        sleep 2
	        if [[ $attack == "h" ]]; then
	                roll=$(( $RANDOM % 4 ))
	                if [[ $roll == "3" ]]; then
	                        echo "CRITICAL HIT!!"
	                        bosshp=$(( $bosshp - 3 ))
	                        time_t11=$(( $time_t11 - 4 ))
	                        sleep 2
	                        echo "-4 time"
	                        sleep 2

	                else
	                echo "Miss!"
	                sleep 2
	                echo "-4 time"
	                hp_t11=$hp_t11
	                time_t11=$(( $time_t11 - 4 ))
	                fi
	        else
	        echo "Hit!"
	        sleep 2
	        bosshp=$(( $bosshp - 1 ))
	        time_t11=$(( $time_t11 - 4 ))
	        echo "-4 time"
	        fi
	else
	echo "You're hit!"
	hpdmg=$(( $RANDOM % 8 + 8 ))
	hp_t11=$(( $hp_t11 - $hpdmg ))
	time_t11=$(( $time_t11 - 4 ))
	sleep 1
	echo "-$hpdmg hp"
	echo "-4 time"

	fi

	if [[ $hp_t11 -le 0 ]]; then
	        echo "You fainted."
	        sleep 2
	        echo "GAME OVER"
	        sleep 3
	        exit 1

	        elif [[ $time_t11 -le 0 ]]; then
	                echo "Out of time!"
	                sleep 2
	                echo "GAME OVER"
	                sleep 3
	                exit 1

	else
	echo "..."
	sleep 2
	fi
done


