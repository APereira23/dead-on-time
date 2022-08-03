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

hp_t6_pre=$carryhp5

time_t6_pre=$carrytime5

echo "PROGRESSO: Casa ...................o-o...................... Trabalho"
echo "HP: $hp_t6_pre"
echo "Time: $time_t6_pre"
sleep 3
echo "..."
sleep 1

#event

echo "Páras num sinal vermelho."
sleep 2
echo "Um músico de rua está a tocar para o trânsito parado"
sleep 1
echo "uma versão em saxofone do 'Despacito'."
sleep 3
echo "Antes do sinal ficar verde, ele pede-te alguns trocos."
sleep 3
echo "(Dar dinheiro [d] / Fugir [f])"
read input

sleep 1
echo "..."
sleep 2

if [[ $input == "f" ]]; then
	echo "Tu finges que não tens moedas contigo, e aceleras rapidamente para fora dali."
	hp_t6_post=$hp_t6_pre
	time_t6_post=$time_t6_pre

	elif [[ $input == "d" ]]; then
		echo "Tiras alguns trocos da carteira e dás ao músico."
		sleep 2
		echo "Ele agradece entusiasticamente."
		sleep 3
		echo "Antes de partires, ele avisa-te de que a estrada à frente está bloqueada por causa de obras,"
		echo "e fala-te de um caminho alternativo que podes tomar."
		sleep 3
		timedmg=$(( $RANDOM % 4 + 5 ))
		echo "-$timedmg time"
		echo "-obstáculo evitado!"
		hp_t6_post=$hp_t6_pre
		time_t6_post=$(( $time_t6_pre - $timedmg ))

else

echo "Tecla errada! Vacilas sob o fardo da escolha, e cais da bicicleta."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t6_post=$(( $hp_t6_pre - 30 ))
time_t6_post=$(( $time_t6_pre - 15 ))

fi
sleep 2

#failconditions

if [[ $hp_t6_post -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t6_post -le 0 ]]; then
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


carryhp6=$hp_t6_post
carrytime6=$time_t6_post

if [[ $input == "d" ]]; then
	
	pass="jump"

	export carryhp6 carrytime6 pass
	./t08p.sh

	sleep 1
	echo $(bash t08p.sh)

else

export carryhp6 carrytime6
./t07p.sh

sleep1
echo $(bash t07p.sh)

fi

exit 1
