#!/bin/bash

#load

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

hp_t9_pre=$carryhp8

time_t9_pre=$carrytime8

echo "PROGRESSO: Casa ................................o-o......... Trabalho"
echo "HP: $hp_t9_pre"
echo "Time: $time_t9_pre"
sleep 3
echo "..."
sleep 1

#event

echo "Está um gatinho deitado no passeio!"
sleep 2
echo "(Parar para dar festinhas [p] / Continuar [c])"
read input

sleep 1
echo "..."
sleep 1

if [[ $input == "p" ]]; then
	echo "Aproximas-te do gato."
	sleep 1
	echo "..."
	sleep 1
	echo "Ele é mansinho!"
	sleep 2
	echo $(clear)
	sleep 1
	echo $(timidity ./sound/kitty.mid --volume=200)&
	echo " /\_/\ "
	echo "( ^.^ )"
	echo " > ' < "
	sleep 2
	echo $(clear)
	echo "		 /\_/\ "
	echo "		( ^.^ )"
	echo "		 > ' < "
	sleep 2
	wait
	echo $(clear)
	sleep 2
	echo "A tua alma negra enche-se de luz, e a vida volta a ter sentido."
	sleep 3
	echo "+20 hp!"
	echo "-8 time"
	hp_t9_post=$(( $hp_t9_pre + 20 ))
	time_t9_post=$(( $time_t9_pre - 8 ))
	
	elif [[ $input == "c" ]]; then
		echo "Ignoras o gato e segues viagem."
		sleep 2
		echo "..."
		sleep 1
		echo "Perdes uma pequena quantidade de HP por teres um buraco negro onde a alma devia estar."
		sleep 2
		echo "-5 hp"
		hp_t9_post=$(( $hp_t9_pre - 5 ))
		time_t9_post=$time_t9_pre

else 

echo "Tecla errada! Vacilas sob o fardo da escolha, e cais da bicicleta."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t9_post=$(( $hp_t9_pre - 30 ))
time_t9_post=$(( $time_t9_pre - 15 ))

fi
#failconditions

if [[ $hp_t9_post -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t9_post -le 0 ]]; then
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

carryhp9=$hp_t9_post
carrytime9=$time_t9_post

export carryhp9 carrytime9
./t10a.sh

sleep 1

echo $(bash t10a.sh)

exit 1
