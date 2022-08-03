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

echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
sleep 3
echo "..."
sleep 1

#event

echo "A estrada está finalmente livre."
sleep 4
echo "Parece que o pior já passou."
sleep 3
echo "..."
sleep 4
echo "..."
sleep 1
echo "Oh não!"
sleep 2
echo "..."
echo "Um taxi acabou de abalroar uma trotineta que seguia atrás de ti!"
sleep 3
echo "O taxista perdeu a cabeça!"
sleep 3
echo "Após anos e anos a ver motas e velocípedes ultrapassá-lo enquanto estava preso em engarrafamentos, enlouqueceu de vez."
sleep 4
echo "Agora vem atrás de ti!"
sleep 3
echo "Ele quer mais sangue!"
sleep 5
echo "..."
sleep 1
echo "..."

#boss fight

echo $(clear)

echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo "..."
sleep 1
echo "			B O S S   F I G H T"
sleep 5

#round1-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "(O taxista está a tentar atropelar-te. Esquiva-te dos seus ataques!"
echo "Presta atenção aos números que irão surgir da direção do taxi"
echo "- Esquerda / Centro / Direita -"
echo "Se tiveres sucesso, ele terá um acidente e poderás atacar de volta!)"
sleep 8
echo "Pronto?"
sleep 1
echo "Aí vem ele!" 

#round1-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 3
echo "Ele está a vir da direita!"
sleep 2

echo $(clear)
sleep 1
n1=$(( $RANDOM % 1000 ))
echo "		                                  											$n1"
sleep 1
echo $(clear)
sleep 1
n2=$(( $RANDOM % 1000 )) 
echo "	                        								                           $n2"
sleep 1

echo $(clear)
echo "PROGRESSO: Home ........................................o-o. Work"
echo "HP: $hp_t11_pre"
echo "Time: $time_t11_pre"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code1
sleep 2
echo "..."
sleep 2
if [[ $code1 == "$n1$n2" ]]; then
	echo "Falhou!"
	sleep 2
	echo "Ele espetou-se contra uma árvore. Agora é a tua chance!"
	sleep 1
	echo "Escolha o teu ataque:"
	echo "- Esmurra-o pela janela aberta (Golpe leve, hit garantido): [l]"
	echo "- Atira-lhe uma pedra (Golpe pesado, mais danos mas menos probabilidade de acertar): [h]"
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
echo "Foste atingido!"
bosshp1=$bosshp
hpdmg1=$(( $RANDOM % 8 + 8 ))
hp_t11_1=$(( $hp_t11_pre - $hpdmg1 ))
time_t11_1=$(( $time_t11_pre - 4 ))
sleep 1
echo "-$hpdmg1 hp"
echo "-4 time"

fi

if [[ $hp_t11_1 -le 0 ]]; then
        echo "DESMAIASTE."
        sleep 2
        echo "ACABOU O JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_1 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi


#round2-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "Pronto?"
sleep 1
echo "Aí vem ele!" 

#round2-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_1"
echo "Time: $time_t11_1"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "Ele vem da esquerda!"
sleep 1

echo $(clear)
sleep 1
n3=$(( $RANDOM % 10000 ))
echo "$n3"
sleep 1
echo $(clear)
sleep 1
n4=$(( $RANDOM % 1000 )) 
echo "         $n4"
sleep 1

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_1"
echo "Time: $time_t11_1"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code2
sleep 2
echo "..."
sleep 2
if [[ $code2 == "$n3$n4" ]]; then
        echo "Falhou!"
        sleep 1
        echo "He chocou com uma parede. Agora é a tua chance!"
        sleep 1
        echo "Escolhe o teu ataque:"
        echo "- Esmurra-o pela janela aberta (ataque leve, hit garantido): [l]"
        echo "- Atira-lhe uma pedra (golpe pesado, maior dano mas maior probabilidade de falhar): [h]"
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
echo "Foste atingido!"
bosshp2=$bosshp1
hpdmg2=$(( $RANDOM % 8 + 8 ))
hp_t11_2=$(( $hp_t11_1 - $hpdmg2 ))
time_t11_2=$(( $time_t11_1 - 4 ))
sleep 1
echo "-$hpdmg2 hp"
echo "-4 time"

fi
if [[ $hp_t11_2 -le 0 ]]; then
        echo "DESMAIASTE."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_2 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round3-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "Aí vem ele" 

#round3-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_2"
echo "Time: $time_t11_2"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "Ele vem de trás!"
sleep 1

echo $(clear)
sleep 1
n5=$(( $RANDOM % 10000 ))
echo "								$n5"
sleep 1
echo $(clear)
sleep 1
n6=$(( $RANDOM % 1000 )) 
echo "        									 $n6"
sleep 1

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_2"
echo "Time: $time_t11_2"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code3
sleep 2
echo "..."
sleep 2
if [[ $code3 == "$n5$n6" ]]; then
        echo "Falhou!"
        sleep 1
        echo "Ele espetou-se contra uma parede!"
        sleep 1
        echo "Escolhe o teu ataque:"
        echo "- Murro (ataque leve, hit garantido): [l]"
        echo "- Pedrada (ataque pesado, mais danos mas maior probabilidade de falhar): [h]"
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
echo "Foste atingido!"
bosshp3=$bosshp2
hpdmg3=$(( $RANDOM % 8 + 8 ))
hp_t11_3=$(( $hp_t11_2 - $hpdmg3 ))
time_t11_3=$(( $time_t11_2 - 4 ))
sleep 1
echo "-$hpdmg3 hp"
echo "-4 time"

fi
if [[ $hp_t11_3 -le 0 ]]; then
        echo "DESMAIASTE."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_3 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi


#round4-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "Pronto?"
sleep 1
echo "Aí vem ele!" 

#round4-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_3"
echo "Time: $time_t11_3"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 3
echo "Ele vem da esquerda!"
sleep 1

echo $(clear)
sleep 1
n7=$(( $RANDOM % 10000 ))
echo "   $n7"
sleep 1
echo $(clear)
sleep 1
n8=$(( $RANDOM % 1000 )) 
echo "               $n8"
sleep 1

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_3"
echo "Time: $time_t11_3"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code4
sleep 2
echo "..."
sleep 2
if [[ $code4 == "$n7$n8" ]]; then
        echo "Falhou!"
        sleep 1
        echo "Ele chocou com um poste!"
        sleep 1
        echo "Escolhe o teu ataque:"
        echo "- Murro (golpe leve, hit garantido): [l]"
        echo "- Pedrada (golpe pesado, mais dano mas maior probabilidade de falhar): [h]"
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
echo "Foste atingido!"
bosshp4=$bosshp3
hpdmg4=$(( $RANDOM % 8 + 8 ))
hp_t11_4=$(( $hp_t11_3 - $hpdmg4 ))
time_t11_4=$(( $time_t11_3 - 4 ))
sleep 1
echo "-$hpdmg4 hp"
echo "-4 time"

fi
if [[ $hp_t11_4 -le 0 ]]; then
        echo "DESMAIASTE."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_4 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round5-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESS0: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "Pronto?"
sleep 1
echo "Aí vem ele!" 

#round5-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_4"
echo "Time: $time_t11_4"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Ele vem da direita!"
sleep 1

echo $(clear)
sleep 1
n9=$(( $RANDOM % 10000 ))
echo "   																	$n9"
sleep 1
echo $(clear)
sleep 1
n10=$(( $RANDOM % 10000 )) 
echo "               											$n10"
sleep 1

echo $(clear)
echo "PROGRESSO: Home ........................................o-o. Work"
echo "HP: $hp_t11_4"
echo "Time: $time_t11_4"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code5
sleep 2
echo "..."
sleep 2
if [[ $code5 == "$n9$n10" ]]; then
        echo "Falhou!"
        sleep 1
        echo "O taxi foi contra uma parede!"
        sleep 1
        echo "Escolhe o teu ataque:"
        echo "- Murro (golpe leve, hit garantido): [l]"
        echo "- Pedra (golpe pesado, mais dano mas maior probabilidade de falhar): [h]"
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
echo "Foste atingido!"
bosshp5=$bosshp4
hpdmg5=$(( $RANDOM % 8 + 8 ))
hp_t11_5=$(( $hp_t11_4 - $hpdmg5 ))
time_t11_5=$(( $time_t11_4 - 4 ))
sleep 1
echo "-$hpdmg5 hp"
echo "-4 time"

fi
if [[ $hp_t11_5 -le 0 ]]; then
        echo "DESMAIASTE."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_5 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round6-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "Pronto?"
sleep 1
echo "Aí vem ele!" 

#round6-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_5"
echo "Time: $time_t11_5"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "Ele vem da direita!"
sleep 1

echo $(clear)
sleep 1
n11=$(( $RANDOM % 10000 ))
echo "  											 					$n11"
sleep 1
echo $(clear)
sleep 1
n12=$(( $RANDOM % 10000 )) 
echo "  									             				$n12"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_5"
echo "Time: $time_t11_5"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code6
sleep 2
echo "..."
sleep 2
if [[ $code6 == "$n11$n12" ]]; then
        echo "Falhou!"
        sleep 1
        echo "O taxi foi contra um poste!"
        sleep 1
        echo "Escolhe o teu ataque:"
        echo "- Murro (golpe leve, hit garantido): [l]"
        echo "- Throw rock (golpe pesado, mais dano mas maior probabilidade de falhar): [h]"
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
echo "Foste atingido!"
bosshp6=$bosshp5
hpdmg6=$(( $RANDOM % 8 + 8 ))
hp_t11_6=$(( $hp_t11_5 - $hpdmg6 ))
time_t11_6=$(( $time_t11_5 - 4 ))
sleep 1
echo "-$hpdmg6 hp"
echo "-4 time"

fi
if [[ $hp_t11_6 -le 0 ]]; then
        echo "DESMAIASTE."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_6 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round7-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "Pronto?"
sleep 1
echo "Aí vem ele!"

#round7-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_6"
echo "Time: $time_t11_6"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "Ele vem da esquerda!"
sleep 1

echo $(clear)
sleep 1
n13=$(( $RANDOM % 10000 ))
echo "  $n13"
sleep 1
echo $(clear)
sleep 1
n14=$(( $RANDOM % 1000 )) 
echo "         $n14"
sleep 1

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_6"
echo "Time: $time_t11_6"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code7
sleep 2
echo "..."
sleep 2
if [[ $code7 == "$n13$n14" ]]; then
        echo "Falhou!"
        sleep 1
        echo "Ele chocou com outro carro!"
        sleep 1
        echo "Escolhe o teu ataque:"
        echo "- Murro (golpe leve, hit garantido): [l]"
        echo "- Atirar pedra (golpe pesado, mais dano mas maior probabilidade de falhar): [h]"
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
echo "Foste atingido!"
bosshp7=$bosshp6
hpdmg7=$(( $RANDOM % 8 + 8 ))
hp_t11_7=$(( $hp_t11_6 - $hpdmg7 ))
time_t11_7=$(( $time_t11_6 - 4 ))
sleep 1
echo "-$hpdmg7 hp"
echo "-4 time"

fi
if [[ $hp_t11_7 -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_7 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi

#round8-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
echo "Pronto?"
sleep 1
echo "Aí vem ele!" 

#round8-fight-----------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_7"
echo "Time: $time_t11_7"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "Ele vem da esquerda!"
sleep 1

echo $(clear)
sleep 1
n15=$(( $RANDOM % 10000 ))
echo "  $n15"
sleep 1
echo $(clear)
sleep 1
n16=$(( $RANDOM % 10000 )) 
echo "         $n16"
sleep 1

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_7"
echo "Time: $time_t11_7"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code8
sleep 2
echo "..."
sleep 2
if [[ $code8 == "$n15$n16" ]]; then
        echo "Falhou!"
        sleep 1
        echo "Ele chocou com outro carro!."
        sleep 1
        echo "Escolhe o teu ataque:"
        echo "- Murro (golpe leve, hit garantido): [l]"
        echo "- Atirar pedra (golpe pesado, mais dano mas maior probabilidade de falhar): [h]"
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
echo "Foste atingido!"
bosshp8=$bosshp7
hpdmg8=$(( $RANDOM % 8 + 8 ))
hp_t11_8=$(( $hp_t11_7 - $hpdmg8 ))
time_t11_8=$(( $time_t11_7 - 4 ))
sleep 1
echo "-$hpdmg8 hp"
echo "-4 time"

fi
if [[ $hp_t11_8 -le 0 ]]; then
        echo "Desmaiaste."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_8 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi



#round9-start--------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
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
echo "V I T Ó R I A"
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
sleep 4
echo ""
echo "Pronto?"
sleep 1
echo "Aí vem ele!" 

#round9-fight-------------------------------------------------------------------------------

echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_8"
echo "Time: $time_t11_8"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 2
echo "Ele vem de trás!"
sleep 1

echo $(clear)
sleep 1
n17=$(( $RANDOM % 10000 ))
echo "  									$n17"
sleep 1
echo $(clear)
sleep 1
n18=$(( $RANDOM % 10000 )) 
echo "         										$n18"
sleep 1

echo $(clear)
echo "PROGRESS: Home ........................................o-o. Work"
echo "HP: $hp_t11_8"
echo "Time: $time_t11_8"
echo ""
echo "TAXI DRIVER $boss"
echo ""
sleep 1
echo "Digita o código"
read code9
sleep 2
echo "..."
sleep 2
if [[ $code9 == "$n17$n18" ]]; then
        echo "Falhou!"
        sleep 1
        echo "Ele chocou com outro carro!"
        sleep 1
        echo "Escolhe o teu ataque"
        echo "- Murro (golpe leve, hit garantido): [l]"
        echo "- Atirar pedra (golpe pesado, mais dano mas maior probabilidade de falhar: [h]"
        read attack9
        sleep 2
        if [[ $attack9 == "h" ]]; then
                roll9=$(( $RANDOM % 4 ))
                if [[ $roll9 == "3" ]]; then
                        echo "CRITICAL HIT!!"
                        bosshp9=$(( $bosshp8 - 3 ))
                        hp_t11_9=$hp_t11_8
                        time_t11_9=$(( $time_t11_8 - 4 ))
                        sleep 2
                        echo "-4 time"
                        sleep 2

                else
                echo "Miss!"
                sleep 2
                echo "-4 time"
                bosshp9=$bosshp8
                hp_t11_9=$hp_t11_8
                time_t11_9=$(( $time_t11_8 - 4 ))
                fi
        else
        echo "Hit!"
        sleep 2
        bosshp9=$(( $bosshp8 - 1 ))
        hp_t11_9=$hp_t11_8
        time_t11_9=$(( $time_t11_8 - 4 ))
        echo "-4 time"
        fi
else
echo "Foste atingido!"
bosshp9=$bosshp8
hpdmg9=$(( $RANDOM % 8 + 8 ))
hp_t11_9=$(( $hp_t11_8 - $hpdmg9 ))
time_t11_9=$(( $time_t11_8 - 4 ))
sleep 1
echo "-$hpdmg9 hp"
echo "-4 time"

fi
if [[ $hp_t11_9 -le 0 ]]; then
        echo "Desmaiaste."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t11_9 -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
sleep 2
fi



#----------------------------------------------------------------------------



echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_9"
echo "Time: $time_t11_9"
echo ""

if [[ $bosshp9 == 5 ]]; then
        boss="[################################################]"
                elif [[ $bosshp9 == 4 ]]; then
                        boss="[####################################            ]"
                                elif [[ $bosshp9 == 3 ]]; then
                                        boss="[############################                    ]"
                                                elif [[ $bosshp9 == 2 ]]; then
                                                        boss="[################                                ]"
                                                                elif [[ $bosshp9 == 1 ]]; then 
                                                                        boss="[#####                                           ]"

else
boss="[                                                ]"
echo "TAXI DRIVER $boss"
echo ""
echo ""
sleep 2
echo "V I C T Ó R I A"
sleep 6

carryhp11=$hp_t11_9
carrytime11=$time_t11_9

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)
exit 1
fi

echo "TAXI DRIVER $boss"
echo ""
sleep 3
echo "(Olá! Se estás a ler isto, é porque o combate está a começar a arrastar-se..."
echo "Está a ser difícil?)"
sleep 5
echo "..."
sleep 1
echo "(Bem... felizmente para ti, o combate só foi programado para chegar até aqui, porque"
echo "eu ainda não sei trabalhar com loops nos scripts, e está a fazer-se tarde! Por isso... "
sleep 7
echo "..."
sleep1
echo $(clear)
echo "PROGRESSO: Casa ........................................o-o. Trabalho"
echo "HP: $hp_t11_9"
echo "Time: $time_t11_9"
echo ""
echo "TAXI DRIVER [                                                ]"
echo ""
echo ""
sleep 2
echo "			V I T O R I A"

sleep 3
echo ""
echo ""
echo ""
echo "(Wink wink)"
sleep 2

carryhp11=$hp_t11_9
carrytime11=$time_t11_9

export carryhp11 carrytime11
./t12.sh
sleep 1
echo $(bash t12.sh)

exit 1
