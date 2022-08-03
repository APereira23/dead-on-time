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


if [[ $pass == "jump" ]]; then
	hp_t8_pre=$carryhp6
	time_t8_pre=$carrytime6

else

hp_t8_pre=$carryhp7
time_t8_pre=$carrytime7

fi

echo "PROGRESSO: Casa ............................o-o............. Trabalho"
echo "HP: $hp_t8_pre"
echo "Time: $time_t8_pre"
sleep 3
echo "..."
sleep 1

#event
echo "Uma carrinha de mudanças estacionou em cima da ciclovia."
sleep 2
echo "Tu tocas a campainha na esperança de que ela se afaste para te deixar passar, mas o condutor manda-te ir dar uma volta."
sleep 4
echo "..."
sleep 1
echo "Perdes algum tempo a ter de dar literalmente a volta, e um pouco de HP"
echo "devido ao esforço cardiovascular de vociferar bestialidades contra o homem."
sleep 3
echo "..."
sleep 1
hpdmg=$(( $RANDOM % 5 + 2 ))
timedmg=$(( $RANDOM % 5 + 2 ))
echo "-$hpdmg hp"
echo "-$timedmg time"
hp_t8_post=$(( $hp_t8_pre - $hpdmg ))
time_t8_post=$(( $time_t8_pre - $timedmg ))

#failconditions

if [[ $hp_t8_post -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t8_post -le 0 ]]; then
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

carryhp8=$hp_t8_post
carrytime8=$time_t8_post

export carryhp8 carrytime8
./t9a.sh

sleep 1

echo $(bash t9a.sh)

exit 1

