#!/bin/bash

#start screen

echo "Bem-vindo a DEAD ON TIME! Digita 'start' e pressiona [enter] para começar."

read  start

if [[ $start == "start" ]]; then
sleep 1
	echo "Iniciando..."
else
        echo "Hmm, nem sequer consegues escrever a palavra 'start' como deve ser?"
	sleep 1
	echo "Tenta de novo!"
	sleep 2
		exit 1

fi

sleep 2
echo $(clear)
#intro#
echo "carregando..."
echo "        __o"
echo "      _ \<_"
echo "(((  (_)/(_)"
sleep 3
echo "carregando..."
echo "             __o"
echo "           _ \<_"
echo "     (((  (_)/(_)"
sleep 2
echo "carregando..."
echo "                  __o"
echo "                _ \<_"
echo "          (((  (_)/(_)"
sleep 2
echo "..."
sleep 1

echo "A iniciar..."
sleep 1
echo "..."
sleep 1

#MUSIC
echo $(timidity ./sound/SnA.mid --loop)&
echo $(clear)
#MUSIC
echo "É segunda-feira de manhã e estás atrasado para o trabalho!"
sleep 3
echo "Ainda meio a dormir, saltas da cama, pões umas roupas a correr e aceleras em direção à porta."
sleep 5
echo "Já na rua, pegas na bicicleta e desatas a pedalar a toda a velocidade."
sleep 5
echo $(clear)
sleep 1
echo "Será que vais conseguir chegar a horas ao trabalho?"
sleep 2
echo "Será que vais conseguir sequer chegar lá?"
sleep 3
echo $(clear)
echo "Tudo depende de ti..."
sleep 5
echo $(clear)
echo "        __o"
echo "      _ \<_"
echo "(((  (_)/(_)"
sleep 3
echo "..."
echo "             __o"
echo "           _ \<_"
echo "     (((  (_)/(_)"
sleep 2
echo "..."
echo "                  __o"
echo "                _ \<_"
echo "          (((  (_)/(_)"
sleep 2
echo "..."
sleep 1
HP=$(( 60 ))
carry=$HP

export carry
./t1a.sh

echo $(bash t1a.sh)

exit 1

