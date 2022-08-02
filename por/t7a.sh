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


hp_t7_pre=$carryhp6
time_t7_pre=$carrytime6

echo "PROGRESSO: Home .......................o-o.................. Work"
echo "HP: $hp_t7_pre"
echo "Time: $time_t7_pre"
sleep 3
echo "..."
sleep 1

#event
echo "..."
sleep 2
echo "A estrada está fechada para obras!"
sleep 2
echo "Voltas para trás e perdes tempo à procura de um caminho alternativo, ou arriscas e cortas pela estrada em obras?"
sleep 3
echo "(Voltar atrás [v] / Seguir em Frente [f])"
read input

sleep 1
echo "..."
sleep 2

if [[ $input == "v" ]]; then
	echo "Dás meia volta."
	sleep 1
	echo "Desta vez jogas pelo seguro!"
	sleep 2
	timedmg=$(( $RANDOM % 6 + 15 ))
	echo "-$timedmg time"
	hp_t7_post=$hp_t7_pre
	time_t7_post=$(( $time_t7_pre - $timedmg ))

	elif [[ $input == "f" ]]; then
		echo "Siga!"
		sleep 2
		echo "Depois do que já se passou até aqui, não é agora que vamos abrandar!"
		sleep 2
		echo "Saltas por cima das barreiras e segues em frente a alta velocidade."
		sleep 4
		echo "Os trabalhadores não estão a achar piada..."
		sleep 4
		echo "..."
		sleep 2
		echo "Eles vêm atrás de ti!!"
		sleep 5
		echo $(clear)
		echo "Foge!"
		sleep 1
		echo "(Uma série de números irá aparecer no ecrã."
		echo "Digita a combinação correta, na ordem certa,"
		echo "para realizares com sucesso a ação indicada.)"
		sleep 6
		echo "Pronto?"
		sleep 3
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
		echo "Digita os números na ordem correta."
		sleep 1
		read numbers
		sleep 1
		echo "..."
		sleep 1
		echo "..."
		sleep 1
		if [[ $numbers == "$n1$n2$n3$n4$n5$n6" ]]; then
		        echo "Muito bem!"
		        sleep 2
		        echo "Teres visto a maratona de filmes da Velocidade Furiosa no fim de semana serviu para alguma coisa."
		        sleep 2
		        timedmg=$(( $RANDOM % 3 + 2 ))
		        echo "-$timedmg time"
		        hp_t7_post=$hp_t7_pre
		        time_t7_post=$(( $time_t7_pre - $timedmg ))
		else
		echo "Falhaste!"
		sleep 2
		echo "Os trabalhadores cercam-te e atiram-te para o chão."
		sleep 1
		echo "Um deles diz"
		echo "'Estes ciclistas de %%$%&#$ pensam que podem fazer sempre o que querem!'"
		sleep 2
		echo "'Já é altura de aprenderem uma lição.'"
		sleep 2
		echo "..."
		sleep 1
		echo "Só tens tempo de ver uma biqueira de aço a descer na direção do teu nariz."
		sleep 3
		echo "..."
		sleep 1
		echo "Ainda a tentares levantar-te e limpar o sangue da cara, ouves alguém na rua a dizer"
		echo "para andares de carro como as pessoas normais."
		sleep 3
		hpdmg=$(( $RANDOM % 7 + 20 ))
		timedmg=$(( $RANDOM % 6 + 10 ))
		echo "-$hpdmg hp"
		echo "-$timedmg time"
		hp_t7_post=$(( $hp_t7_pre - $hpdmg ))
		time_t7_post=$(( $time_t7_pre - $timedmg ))
		fi
else

echo "Tecla errada! Vacilas sob o fardo da escolha, e cais da bicicleta."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t7_post=$(( $hp_t6_pre - 30 ))
time_t7_post=$(( $time_t6_pre - 15 ))

fi
sleep 2

#failconditions

if [[ $hp_t7_post -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t7_post -le 0 ]]; then
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

carryhp7=$hp_t7_post
carrytime7=$time_t7_post

export carryhp7 carrytime7
./t8a.sh

sleep 1

echo $(bash t8a.sh)

exit 1

