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

hp_t5_pre=$carryhp4

time_t5_pre=$carrytime4

echo "PROGRESSO: Casa ................o-o......................... Trabalho"
echo "HP: $hp_t5_pre"
echo "Time: $time_t5_pre"
sleep 3
echo "..."
sleep 1

#event

echo "Há um café à beira da estrada."
sleep 2
echo "Por esta altura eras capaz de dar tudo por uma injeção de cafeína,"
sleep 2
echo "mas talvez não tenhas tempo..."
sleep 3
echo "(Seguir em frente [f] / parar para um café [c])"

read input
sleep 1
echo "..."
sleep 1
echo "..."

if [[ $input == "m" ]]; then
	echo "Segues caminho."
	sleep 2
	echo "Não há tempo a perder!"
	hp_t5_post=$hp_t5_pre
	time_t5_post=$time_t5_pre

	elif [[ $input == "c" ]]; then
		echo "Fazes uma pausa no percurso para recuperar as energias."
		sleep 2
		hpboost=$(( $RANDOM % 3 + 18 ))
		echo "+$hpboost hp"
		timedmg=$(( $RANDOM % 6 + 15 ))
		echo "-$timedmg time"
		hp_t5_post=$(( $hp_t5_pre + $hpboost ))
		time_t5_post=$(( $time_t5_pre - $timedmg ))

else

echo "Tecla errada! Vacilas sob o peso da escolha, e cais da bicicleta."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t5_post=$(( $hp_t5_pre - 30 ))
time_t5_post=$(( $time_t5_pre - 15 ))

fi
sleep 2
#failconditions

if [[ $hp_t5_post -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t5_post -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
echo "Pressiona [enter] para continuar"
fi

read key

#transition

carryhp5=$hp_t5_post
carrytime5=$time_t5_post

export carryhp5 carrytime5
./t6a.sh

sleep 1

echo $(bash t6a.sh)

exit 1

