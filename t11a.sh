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

hp_t11_pre=$carryhp10

time_t11_pre=$carrytime10

echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
sleep 3
echo "..."
sleep 1

#event

echo "The road has cleared."
sleep 4
echo "Seems like smooth sailing from now on."
sleep 3
echo "..."
sleep 4
echo "..."
sleep 1
echo "Oh no!"
sleep 2
echo "..."
echo "A cab just ran over a scooter riding behind you!"
sleep 3
echo "The cab driver has lost his mind!"
sleep 3
echo "He had enough of being overtaken by bikers and cyclists while he's stuck in traffic."
sleep 4
echo "He's chasing you now!"
sleep 3
echo "He wants more blood!"
sleep 5
echo "..."
sleep 1
echo "..."

#boss fight

echo $(clear)

echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo "..."
sleep 1
echo "			B O S S   F I G H T"
sleep 5

#round1-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo ""
bosshp="5"
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

carryhp11=$hp_t11_pre
carrytime11=$time_t11_pre

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 3
echo ""
echo "(The cabbie is trying to ram you down. Evade his attacks!"
echo "Pay attention to the numbers coming from the cab's direction"
echo "-Left / Center / Right-"
echo "If you're successful, he will crash, giving you a chance to strike back!)"
sleep 6
echo "Ready?"
sleep 1
echo "Here he comes!" 

#round1-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 3
echo "He's approaching from the right!"
sleep 2

echo $(clear)
sleep 1
n1=$(( $RANDOM % 1000 ))
echo "												$n1"
sleep 1
echo $(clear)
sleep 1
n2=$(( $RANDOM % 1000 )) 
echo "	                        			                           $n2"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code1
sleep 2
echo "..."
sleep 2
if [[ $code1 == "$n1$n2" ]]; then
	echo "Miss!"
	sleep 2
	echo "He crashed into a tree. Now is your chance!"
	sleep 1
	echo "Choose your attack:"
	echo "- Punch him through the window (Light attack, garanteed hit): [l]"
	echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
	read attack1
	sleep 2
	if [[ $attack1 == "h" ]]; then
		roll1=$(( $RANDOM % 4 ))
		if [[ $roll1 == "3" ]]; then
			echo "CRITICAL HIT!!"
			bosshp1=$(( $bosshp - 3 ))
			hp_t11_1=$hp_t11_pre
			time_t11_1=$(( $time_t11_pre - 4 ))
			sleep 2
			echo "-4 time"
			sleep 2

		else
		echo "Miss!"
		sleep 2
		echo "-4 time"
		bosshp1=$bosshp
                hp_t11_1=$hp_t11_pre
                time_t11_1=$(( $time_t11_pre - 4 ))
		fi
	else
	echo "Hit!"
	sleep 2
	bosshp1=$(( $bosshp - 1 ))
        hp_t11_1=$hp_t11_pre
        time_t11_1=$(( $time_t11_pre - 4 ))
	echo "-4 time"
	fi
else
echo "You're hit!"
bosshp1=$bosshp
hpdmg1=$(( $RANDOM % 8 + 8 ))
hp_t11_1=$(( $hp_t11_pre - $hpdmg1 ))
time_t11_1=$(( $time_t11_pre - 4 ))
sleep 1
echo "-$hpdmg1 hp"
echo "-4 time"

fi

if [[ $hp_t11_1 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_1 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi


#round2-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_1"
echo "Time: $time_t11_1"
echo ""

if [[ $bosshp1 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp1 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp1 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp1 == 2 ]]; then
                                                        boss="[################                                ]"

                                                                elif [[ $bosshp1 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_1
carrytime11=$time_t11_1

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 5
echo ""
echo "Ready?"
sleep 1
echo "Here he comes again!" 

#round2-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_1"
echo "Time: $time_t11_1"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "He's approaching from the left!"
sleep 1

echo $(clear)
sleep 1
n3=$(( $RANDOM % 10000 ))
echo "$n3"
sleep 1
echo $(clear)
sleep 1
n4=$(( $RANDOM % 100 )) 
echo "         $n4"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_1"
echo "Time: $time_t11_1"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code2
sleep 2
echo "..."
sleep 2
if [[ $code2 == "$n3$n4" ]]; then
        echo "Miss!"
        sleep 1
        echo "He crashed into a wall. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack2
        sleep 2
        if [[ $attack2 == "h" ]]; then
                roll2=$(( $RANDOM % 4 ))
                if [[ $roll2 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp2=$(( $bosshp1 - 3 ))
                        hp_t11_2=$hp_t11_1
                        time_t11_2=$(( $time_t11_1 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp2=$bosshp1
                hp_t11_2=$hp_t11_1
                time_t11_2=$(( $time_t11_1 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp2=$(( $bosshp1 - 1 ))
        hp_t11_2=$hp_t11_1
        time_t11_2=$(( $time_t11_1 - 4 ))
        echo "-4 time"
        fi
else
echo "You're hit!"
bosshp2=$bosshp1
hpdmg2=$(( $RANDOM % 8 + 8 ))
hp_t11_2=$(( $hp_t11_1 - $hpdmg2 ))
time_t11_2=$(( $time_t11_1 - 4 ))
sleep 1
echo "-$hpdmg2 hp"
echo "-4 time"

fi
if [[ $hp_t11_2 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_2 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round3-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_2"
echo "Time: $time_t11_2"
echo ""

if [[ $bosshp2 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp2 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp2 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp2 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp2 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_2
carrytime11=$time_t11_2

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 4
echo ""
echo "Ready?"
sleep 1
echo "Here he comes again!" 

#round3-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_2"
echo "Time: $time_t11_2"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "He's coming from the rear!"
sleep 1

echo $(clear)
sleep 1
n5=$(( $RANDOM % 10000 ))
echo "							$n5"
sleep 1
echo $(clear)
sleep 1
n6=$(( $RANDOM % 100 )) 
echo "        							 $n6"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_2"
echo "Time: $time_t11_2"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code3
sleep 2
echo "..."
sleep 2
if [[ $code3 == "$n5$n6" ]]; then
        echo "Miss!"
        sleep 1
        echo "He crashed into a wall. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack3
        sleep 2
        if [[ $attack3 == "h" ]]; then
                roll3=$(( $RANDOM % 4 ))
                if [[ $roll3 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp3=$(( $bosshp2 - 3 ))
                        hp_t11_3=$hp_t11_2
                        time_t11_3=$(( $time_t11_2 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp3=$bosshp2
                hp_t11_3=$hp_t11_2
                time_t11_3=$(( $time_t11_2 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp3=$(( $bosshp2 - 1 ))
        hp_t11_3=$hp_t11_2
        time_t11_3=$(( $time_t11_2 - 4 ))
        echo "-4 time"
        fi
else
echo "You're hit!"
bosshp3=$bosshp2
hpdmg3=$(( $RANDOM % 8 + 8 ))
hp_t11_3=$(( $hp_t11_2 - $hpdmg3 ))
time_t11_3=$(( $time_t11_2 - 4 ))
sleep 1
echo "-$hpdmg3 hp"
echo "-4 time"

fi
if [[ $hp_t11_3 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_3 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi


#round4-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_3"
echo "Time: $time_t11_3"
echo ""

if [[ $bosshp3 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp3 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp3 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp3 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp3 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_3
carrytime11=$time_t11_3

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 5
echo ""
echo "Ready?"
sleep 1
echo "Here he comes again!" 

#round4-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_3"
echo "Time: $time_t11_3"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 3
echo "He's coming from the left!"
sleep 1

echo $(clear)
sleep 1
n7=$(( $RANDOM % 10000 ))
echo "   $n7"
sleep 1
echo $(clear)
sleep 1
n8=$(( $RANDOM % 100 )) 
echo "               $n8"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_3"
echo "Time: $time_t11_3"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code4
sleep 2
echo "..."
sleep 2
if [[ $code4 == "$n7$n8" ]]; then
        echo "Miss!"
        sleep 1
        echo "He crashed into a tree. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack4
        sleep 2
        if [[ $attack4 == "h" ]]; then
                roll4=$(( $RANDOM % 4 ))
                if [[ $roll4 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp4=$(( $bosshp3 - 3 ))
                        hp_t11_4=$hp_t11_3
                        time_t11_4=$(( $time_t11_3 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp4=$bosshp3
                hp_t11_4=$hp_t11_3
                time_t11_4=$(( $time_t11_3 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp4=$(( $bosshp3 - 1 ))
        hp_t11_4=$hp_t11_3
        time_t11_4=$(( $time_t11_3 - 4 ))
        echo "-4 time"
        fi
else
echo "You're hit!"
bosshp4=$bosshp3
hpdmg4=$(( $RANDOM % 8 + 8 ))
hp_t11_4=$(( $hp_t11_3 - $hpdmg4 ))
time_t11_4=$(( $time_t11_3 - 4 ))
sleep 1
echo "-$hpdmg4 hp"
echo "-4 time"

fi
if [[ $hp_t11_4 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_4 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round5-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_4"
echo "Time: $time_t11_4"
echo ""

if [[ $bosshp4 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp4 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp4 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp4 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp4 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_4
carrytime11=$time_t11_4

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 3
echo ""
echo "Ready?"
sleep 1
echo "Here he comes again!" 

#round5-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_4"
echo "Time: $time_t11_4"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "He's coming from the right!"
sleep 1

echo $(clear)
sleep 1
n9=$(( $RANDOM % 10000 ))
echo "   $n9"
sleep 1
echo $(clear)
sleep 1
n10=$(( $RANDOM % 100 )) 
echo "               $n10"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_4"
echo "Time: $time_t11_4"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code5
sleep 2
echo "..."
sleep 2
if [[ $code5 == "$n9$n10" ]]; then
        echo "Miss!"
        sleep 1
        echo "He crashed into a tree. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack5
        sleep 2
        if [[ $attack5 == "h" ]]; then
                roll5=$(( $RANDOM % 4 ))
                if [[ $roll5 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp5=$(( $bosshp4 - 3 ))
                        hp_t11_5=$hp_t11_4
                        time_t11_5=$(( $time_t11_4 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp5=$bosshp4
                hp_t11_5=$hp_t11_4
                time_t11_5=$(( $time_t11_4 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp5=$(( $bosshp4 - 1 ))
        hp_t11_5=$hp_t11_4
        time_t11_5=$(( $time_t11_4 - 4 ))
        echo "-4 time"
        fi
else
echo "You're hit!"
bosshp5=$bosshp4
hpdmg5=$(( $RANDOM % 8 + 8 ))
hp_t11_5=$(( $hp_t11_4 - $hpdmg5 ))
time_t11_5=$(( $time_t11_4 - 4 ))
sleep 1
echo "-$hpdmg5 hp"
echo "-4 time"

fi
if [[ $hp_t11_5 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_5 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round6-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_5"
echo "Time: $time_t11_5"
echo ""

if [[ $bosshp5 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp5 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp5 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp5 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp5 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_5
carrytime11=$time_t11_5

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 4
echo ""
echo "Ready?"
sleep 1
echo "Here he comes again!" 

#round6-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_5"
echo "Time: $time_t11_5"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "He's coming from the right!"
sleep 1

echo $(clear)
sleep 1
n11=$(( $RANDOM % 10000 ))
echo "  											 $n11"
sleep 1
echo $(clear)
sleep 1
n12=$(( $RANDOM % 1000 )) 
echo "  									             $n12"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_5"
echo "Time: $time_t11_5"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code6
sleep 2
echo "..."
sleep 2
if [[ $code6 == "$n11$n12" ]]; then
        echo "Miss!"
        sleep 1
        echo "He crashed into a lighting post. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack6
        sleep 2
        if [[ $attack6 == "h" ]]; then
                roll6=$(( $RANDOM % 4 ))
                if [[ $roll6 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp6=$(( $bosshp5 - 3 ))
                        hp_t11_6=$hp_t11_5
                        time_t11_6=$(( $time_t11_5 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp6=$bosshp5
                hp_t11_6=$hp_t11_5
                time_t11_6=$(( $time_t11_5 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp6=$(( $bosshp5 - 1 ))
        hp_t11_6=$hp_t11_5
        time_t11_6=$(( $time_t11_5 - 4 ))
        echo "-4 time"
        fi
else
echo "You're hit!"
bosshp6=$bosshp5
hpdmg6=$(( $RANDOM % 8 + 8 ))
hp_t11_6=$(( $hp_t11_5 - $hpdmg6 ))
time_t11_6=$(( $time_t11_5 - 4 ))
sleep 1
echo "-$hpdmg6 hp"
echo "-4 time"

fi
if [[ $hp_t11_6 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_6 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round7-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_6"
echo "Time: $time_t11_6"
echo ""

if [[ $bosshp6 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp6 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp6 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp6 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp6 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_6
carrytime11=$time_t11_6

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 4
echo ""
echo "Ready?"
sleep 1
echo "Here he comes again!" 

#round7-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_6"
echo "Time: $time_t11_6"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "He's coming from the left!"
sleep 1

echo $(clear)
sleep 1
n13=$(( $RANDOM % 10000 ))
echo "  $n13"
sleep 1
echo $(clear)
sleep 1
n14=$(( $RANDOM % 100 )) 
echo "         $n14"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_6"
echo "Time: $time_t11_6"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code7
sleep 2
echo "..."
sleep 2
if [[ $code7 == "$n13$n14" ]]; then
        echo "Miss!"
        sleep 1
        echo "He crashed into another car. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack7
        sleep 2
        if [[ $attack7 == "h" ]]; then
                roll7=$(( $RANDOM % 4 ))
                if [[ $roll7 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp7=$(( $bosshp6 - 3 ))
                        hp_t11_7=$hp_t11_6
                        time_t11_7=$(( $time_t11_6 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp7=$bosshp6
                hp_t11_7=$hp_t11_6
                time_t11_7=$(( $time_t11_6 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp7=$(( $bosshp6 - 1 ))
        hp_t11_7=$hp_t11_6
        time_t11_7=$(( $time_t11_6 - 4 ))
        echo "-4 time"
        fi
else
echo "You're hit!"
bosshp7=$bosshp6
hpdmg7=$(( $RANDOM % 8 + 8 ))
hp_t11_7=$(( $hp_t11_6 - $hpdmg7 ))
time_t11_7=$(( $time_t11_6 - 4 ))
sleep 1
echo "-$hpdmg7 hp"
echo "-4 time"

fi
if [[ $hp_t11_7 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_7 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round8-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_7"
echo "Time: $time_t11_7"
echo ""

if [[ $bosshp7 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp7 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp7 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp7 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp7 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_7
carrytime11=$time_t11_7

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
sleep 4
echo ""
echo "Ready?"
sleep 1
echo "Here he comes again!" 

#round8-fight-----------------------

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_7"
echo "Time: $time_t11_7"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "He's coming from the left!"
sleep 1

echo $(clear)
sleep 1
n15=$(( $RANDOM % 10000 ))
echo "  $n15"
sleep 1
echo $(clear)
sleep 1
n16=$(( $RANDOM % 1000 )) 
echo "         $n16"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_7"
echo "Time: $time_t11_7"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Type the code"
read code8
sleep 2
echo "..."
sleep 2
if [[ $code8 == "$n15$n16" ]]; then
        echo "Miss!"
        sleep 1
        echo "He crashed into a another car. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch him through the window (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack8
        sleep 2
        if [[ $attack8 == "h" ]]; then
                roll8=$(( $RANDOM % 4 ))
                if [[ $roll8 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp8=$(( $bosshp7 - 3 ))
                        hp_t11_8=$hp_t11_7
                        time_t11_8=$(( $time_t11_7 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp8=$bosshp7
                hp_t11_8=$hp_t11_7
                time_t11_8=$(( $time_t11_7 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp8=$(( $bosshp7 - 1 ))
        hp_t11_8=$hp_t11_7
        time_t11_8=$(( $time_t11_7 - 4 ))
        echo "-4 time"
        fi
else
echo "You're hit!"
bosshp8=$bosshp7
hpdmg8=$(( $RANDOM % 8 + 8 ))
hp_t11_8=$(( $hp_t11_7 - $hpdmg8 ))
time_t11_8=$(( $time_t11_7 - 4 ))
sleep 1
echo "-$hpdmg8 hp"
echo "-4 time"

fi
if [[ $hp_t11_8 -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t11_8 -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi
#----------------------------------------------------------------------------



echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_8"
echo "Time: $time_t11_8"
echo ""

if [[ $bosshp8 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp8 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp8 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp8 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp8 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11=$hp_t11_8
carrytime11=$time_t11_8

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
echo ""
sleep 3
echo "(Hey there! If you're reading this, it means the fight is starting to drag a little."
echo "Having some trouble, are you?)"
sleep 5
echo "..."
sleep 1
echo "(Well, fortunately for you, the game was only programmed to go this far, because I still"
echo "haven't properly learned how to loop scripts, and it's getting late in the evening! So... "
sleep 7
echo "..."
sleep1
echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_8"
echo "Time: $time_t11_8"
echo ""
echo "TAXI DRIVER [                                                ]"
echo ""
echo ""
sleep 2
echo "		V I C T O R Y   A C H I E V E D"

sleep 3
echo ""
echo ""
echo ""
echo "(Wink wink)"
sleep 2

carryhp11=$hp_t11_8
carrytime11=$time_t11_8

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)

exit 1
