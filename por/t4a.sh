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

hp_t4_pre=$carryhp3

time_t4_pre=$carrytime3

echo "PROGRESSO: Home ............o-o............................. Work"
echo "HP: $hp_t4_pre"
echo "Time: $time_t4_pre"
sleep 3
echo "..."
sleep 1

#event
echo "Ao aproximares-te de um cruzamento, o semáforo fica vermelho."
sleep 4
echo "Páras ou aceleras e passas já?"
sleep 1
echo "(parar: [p] / Acelerar: [a])"

read input
sleep 1
echo "..."
sleep 1
echo "..."

if [[ $input == "p" ]]; then
	echo "Depressa e bem, não há quem."
	echo "."
	echo "Tu esperas que o sinal fique verde antes de atravessares."
	sleep 5
	timedmg=$(( $RANDOM % 6 + 20 ))
        echo "-$timedmg time"
        hp_t4_post=$hp_t4_pre
        time_t4_post=$(( $time_t4_pre - $timedmg ))

	elif [[ $input == "a" ]]; then
		echo "Tu aceleras e tentas passar já o cruzamento."
		sleep 2
		echo "..."
		sleep 1
		echo "Vêm carros na tua direção!!!"
		sleep 3
		#number game HARD
		echo $(clear)
		echo "ESQUIVA-TE DO TRÂNSITO"
		sleep 3
		echo "(Digita os números que irão aparecer no ecrã, na ordem correta, para realizares com sucesso a ação indicada.)"
		sleep 6
		echo "Pronto?"
		sleep 2
		echo $(clear)
		sleep 1
		echo "Memoriza os números!"
		sleep 2

		echo $(clear)
		sleep 2
		n1=$(( $RANDOM % 10 ))
		echo "$n1"
		sleep 1

		echo $(clear)
		n2=$(( $RANDOM % 10 ))
		echo "          $n2"
		sleep 1

		echo $(clear)
		n3=$(( $RANDOM % 10 ))
		echo "$n3"
		sleep 1

		echo $(clear)
		n4=$(( $RANDOM % 10 ))
		echo "          $n4"
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
                n7=$(( $RANDOM % 10 ))
                echo "$n7"
                sleep 1

		echo $(clear)
                n8=$(( $RANDOM % 10 ))
                echo "          $n8"
                sleep 1
		echo $(clear)
		
		sleep 1
		echo "Digita os números na ordem certa."
		sleep 1
		read numbers
		sleep 1
		echo "..."
		sleep 1
		echo "..."
		sleep 1

		if [[ $numbers == "$n1$n2$n3$n4$n5$n6$n7$n8" ]]; then
        		echo "Incrível!!"
        		sleep 2
        		echo "Com a destreza de um estafeta da Glovo, evitas morte certa com uma série de evasões milimétricas."
        		sleep 3
        		timedmg=$(( $RANDOM % 3 + 3 ))
        		echo "-$timedmg time"
        		hp_t4_post=$hp_t4_pre
        		time_t4_post=$(( $time_t4_pre - $timedmg ))
			sleep 2
			echo "Mas cuidado, que podes não ter tanta sorte da próxima vez!"
			sleep 2

		else
		echo "Falhaste!"
		sleep 2
		echo "És abalroado por um carro que vinha lançado. Espetas-te contra o pára-brisas e cais de cara no asfalto."
		sleep 2
		echo "Ouviu-se um estalido. Não estás certo sobre se foi a bicicleta a partir-se, ou o teu fémur."
		sleep 2
		echo "Também há sangue. Muito sangue."
		sleep 2
		timedmg=$(( $RANDOM % 3 + 15 ))
                hpdmg=$(( $RANDOM % 20 + 25 ))
		echo "-$hpdmg hp"
		echo "-$timedmg time"
                hp_t4_post=$(( $hp_t4_pre - $hpdmg ))
                time_t4_post=$(( $time_t4_pre - $timedmg ))
		sleep 2

		fi

else

echo "Tecla errada! Vacilas sob o peso da escolha, e cais da bicileta."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t4_post=$(( $hp_t4_pre - 30 ))
time_t4_post=$(( $time_t4_pre - 15 ))

fi
sleep 2

#failconditions

if [[ $hp_t4_post -le 0 ]]; then
        echo "DESMAIASTE."
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t4_post -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
echo "Pressiona [enter] para continuar"
fi

#transition

read key

carryhp4=$hp_t4_post
carrytime4=$time_t4_post

export carryhp4 carrytime4
./t5a.sh

sleep 1

echo $(bash t5a.sh)

exit 1
