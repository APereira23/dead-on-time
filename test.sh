#!/bin/bash

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo ""
echo ""

bosshp="5"
if [[ $bosshp == 5 ]]; then
	boss="|################################################|"
		elif [[ $bosshp == 4 ]]; then
			boss="|####################################            |"
				elif [[ $bosshp == 3 ]]; then
					boss="|############################                    |"
						elif [[ $bosshp == 2 ]]; then
							boss="|################                                |"

								elif [[ $bosshp == 1 ]]; then 
									boss="|#####                                           |"

else
boss="|                                                |"
echo ""
echo ""
sleep 2
echo "V I C T O R Y   A C H I E V E D"
sleep 6

carryhp11= #$hp_t11_
carrytime11= #$time_t11

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)


fi

echo "TAXI DRIVER $boss"
sleep 1
echo "He's approaching from the right!"
sleep 1

echo $(clear)
sleep 1
n1=$(( $RANDOM % 256 ))
echo "                                                          $n1"
sleep 1
echo $(clear)
sleep 1
n2=$(( $RANDOM % 256 )) 
echo "                                                   $n2"
sleep 1


echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo ""
echo ""
echo "TAXI DRIVER $boss5"
sleep 1
echo "Type the code"
read code1
sleep 2
echo "..."
sleep 2
if [[ $code1 == "$n1$n2" ]]; then
        echo "Miss!"
        sleep 2
        echo "He crashed against a tree. Now is your chance!"
        sleep 1
        echo "Choose your attack:"
        echo "- Punch (Light attack, garanteed hit): [l]"
        echo "- Throw rock (Heavy attack, big damage but likely to miss): [h]"
        read attack1
        sleep 2
        if [[ $attack1 == "h" ]]; then
                roll1=$(( $RANDOM % 2 ))
                echo "roll: $roll1"
                if [[ $roll1 == "1" ]]; then
                        echo "Great success!"
			
                else
                echo "Miss!"
                fi
        else
        echo "Light attack connects"
        fi
else
echo "You're hit!"
echo "Hp lost"
fi

