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

hp_t2_pre=$carryhp

time_t2_pre=$carrytime

echo "PROGRESSO: Casa ......o-o................................... Trabalho"
echo "HP: $hp_t2_pre"
echo "Time: $time_t2_pre"
sleep 3
echo "..."
sleep 1
echo "Ao seguir caminho, tu enxotas um bando de pombos que estava na ciclovia."
sleep 2
echo "Eles não reagem bem a ameaças e assumem uma formação de ataque, com o objetivo de te bombardear com uma chuva de caca!"
sleep 6
echo "FOGE DO COCÓ"
sleep 3
echo $(clear)
echo "(Uma série de números irá aparecer no ecrã."
echo "Memoriza os números e depois digita-os, na ordem correta,"
echo "para realizar com sucesso a ação indicada.)"
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
echo "		$n2"
sleep 1

echo $(clear)
n3=$(( $RANDOM % 10 ))
echo "$n3"
sleep 1

echo $(clear)
n4=$(( $RANDOM % 10 ))
echo "		$n4"
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
sleep 1
echo "Digita os números na ordem certa."
sleep 1
read numbers
sleep 1
echo "..."
sleep 1
echo "..."
sleep 1

if [[ $numbers == "$n1$n2$n3$n4$n5$n6" ]]; then
	echo "Muito bem!!"
	sleep 2
	echo "Zig-zageaste com sucesso para fora de uma situação mal-cheirosa."
	sleep 2
	timedmg=$(( $RANDOM % 3 + 2 ))
	echo "-$timedmg time"
	hp_t2_post=$hp_t2_pre
	time_t2_post=$(( $time_t2_pre - $timedmg ))

else
echo "Falhaste!"
sleep 2
echo "Um dos pombos acerta um tiro em cheio."
sleep 2
echo "Critical hit!"
sleep 2
hpdmg=$(( $RANDOM % 9 + 17 ))
timedmg=$(( $RANDOM % 5 + 6 ))
echo "-$hpdmg hp"
echo "-$timedmg time"
hp_t2_post=$(( $hp_t2_pre - $hpdmg ))
time_t2_post=$(( $time_t2_pre - $timedmg ))

fi

sleep 2
#failstate!! hp=0 || time=0
if [[ $hp_t2_post -le 0 ]]; then
	echo "DESMAIASTE."
	sleep 2
	echo "FIM DO JOGO"
	sleep 3
	exit 1
	
	elif [[ $time_t2_post -le 0 ]]; then
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

carryhp2=$hp_t2_post
carrytime2=$time_t2_post

export carryhp2 carrytime2
./t03p.sh

sleep 1

echo $(bash t03p.sh)

exit 1
