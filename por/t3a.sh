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

hp_t3_pre=$carryhp2

time_t3_pre=$carrytime2

echo "PROGRESSO: Home .........o-o................................ Work"
echo "HP: $hp_t3_pre"
echo "Time: $time_t3_pre"
sleep 3
echo "..."
sleep 1

echo "Para escapares a um engarrafamento, cortas por um beco".
sleep 2
echo "O beco está completamente vazio, com exceção de um homem lá mais à frente."
sleep 3
echo "À medida que te aproximas, o homem começa a chamar-te e a pedir ajuda para alguma coisa."
sleep 4
echo "Ele tem a aparência de um velho desconchavado, e parece meio lunático."
sleep 3
echo "O que fazes? Ignoras o velho ou tentas ajudá-lo?"
sleep 1
echo "(Ignorar: [i] / Ajudar: [a])"

read input
sleep 1
echo "..."
sleep 1
echo "..."

if [[ $input == "i" ]]; then
	echo "Tu desvias-te do homem e segues caminho, ignorando os apelos desesperados do velho."
	echo "Não há cá tempo para estas 'sidequests' de videojogo quando se está atrasado para o trabalho!!"
	sleep 5
	timedmg=$(( 4 ))
	echo "-$timedmg time"
	hp_t3_post=$hp_t3_pre
	time_t3_post=$(( $time_t3_pre - $timedmg ))

	elif [[ $input == "a" ]]; then
		echo "Tu páras e perguntas ao homem o que se passa."
		sleep 2
		echo "He precipita-se na tua direção e, antes que tenhas tempo de reagir, agarra no guiador da bicicleta e tenta empurrar-te para fora dela."
		sleep 5
		echo  "Enquanto tentas livrar-te do velho maluco, ele berra coisas como"
		sleep 2
		echo "SATÃ VEM AÍ"
		echo "PRECISO DA BICICLETA"
		echo "TENHO DE FUGIR"
		echo "SATÃ QUER-ME APANHARRRR!"
		sleep 4
		echo "Vocês lutam até que finalmente tu consegues afastá-lo com um pontapé bem apontado ao estômago."
		sleep 2
		hpdmg=$(( $RANDOM % 5 + 15 ))
		echo "-$hpdmg hp"
		timedmg=$(( $RANDOM % 10 + 10 ))
		echo "-$timedmg time"
		hp_t3_post=$(( $hp_t3_pre - $hpdmg ))
		time_t3_post=$(( $time_t3_pre - $timedmg ))
		sleep 5
		echo "..."
		echo "Consegues fugir daquele beco maldito, e repensas as tuas escolhas de vida."
		sleep 4

else

echo "Tecla errada! Vacilas sob o fardo da escolha, e cais da bicicleta."
sleep 2
echo "-30 hp"
echo "-15 time"
hp_t3_post=$(( $hp_t3_pre - 30 ))
time_t3_post=$(( $time_t3_pre - 15 ))

fi
sleep 2

#failconditions
if [[ $hp_t3_post -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t3_post -le 0 ]]; then
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

carryhp3=$hp_t3_post
carrytime3=$time_t3_post

export carryhp3 carrytime3
./t4a.sh

sleep 1

echo $(bash t4a.sh)

exit 1
