#!/bin/bash

echo $(clear)
echo "PROGRESSO: Casa ..o-o....................................... Trabalho"
echo "HP: 100"
echo "Time: 100"
hp_t1_pre=$(( 100 ))
time_t1_pre=$(( 100 ))

sleep 3
echo "..."
sleep 1
echo "À saída da tua rua, vês um bando de miúdos a jogar à bola."
sleep 3
echo "Tu conheces esses pestinhas... e eles não são flor que se cheire."
sleep 3
echo "Aceleras e passas por eles a correr, ou abrandas para os cumprimentar?"
echo "(Rápido: [r] / Devagar: [d])"
read input

if [[ $input == "r" ]]; then
	sleep 1
	echo "Dás ao pedal e aceleras, enquanto tocas a campainha para manter os pirralhos afastados de ti."
	sleep 3
	echo "Um dos miúdos sente-se ofendido pela tua ação."
	sleep 2
	echo "Ele começa a olhar para ti como se fosses um alvo em movimento..."
	sleep 6
	echo "Ele pega na bola e chuta-a como se fosse o Roberto Carlos em '97."
	sleep 4
	echo "..."
	sleep 2
	echo "..."
	kid=$(( $RANDOM % 2 ))
	if [[ $kid == 1 ]]; then
		hpdmg=$(( $RANDOM % 11 + 15 ))
		timedmg=$(( $RANDOM % 6 + 10 ))
		echo "A bola acerta na roda da frente com violência, fazendo com que caias com estrondo. As pestes desatam a fugir enquanto soltam gargalhadas."
		sleep 3
		echo "-$hpdmg hp"
		hp_t1_post=$(( $hp_t1_pre - $hpdmg ))
		echo "-$timedmg time"
		time_t1_post=$(( $time_t1_pre - $timedmg ))

		elif [[ $kid == 0 ]]; then
			echo "..."
			sleep 2
			echo "Falhou!"
			sleep 1
			echo "Deve ser o teu dia de sorte."
			hp_t1_post=$hp_t1_pre
			time_t1_post=$time_t1_pre

	fi

	elif [[ $input == "d" ]]; then
		sleep 1
		echo "Tu recordas a velha máxima dos tempos do recreio: 'mantém os amigos por perto, e os bullies ainda mais por perto'."
		echo "Abrandas e cumprimentas os fedelhos."
		sleep 4
		echo "Eles acenam de volta e seguem a sua vida."
		sleep 2
		timedmg=$(( 15 ))
		echo "-$timedmg time"
		hp_t1_post=$hp_t1_pre
		time_t1_post=$(( $time_t1_pre - $timedmg ))

else
echo "Tecla errada! Vacilas sob o fardo da escolha, e cais da bicicleta."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t1_post=$(( $hp_t1_pre - 30 ))
time_t1_post=$(( $time_t1_pre - 15 ))

fi
echo "..."
echo "Pressiona [enter] para continuar"
read key


carryhp=$hp_t1_post
carrytime=$time_t1_post

export carryhp carrytime
./t2a.sh

sleep 1

echo $(bash t2a.sh)

exit 1
