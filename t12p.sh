#!/bin/bash

hp_t12=$carryhp11
time_t12=$carrytime11

killall timidity&
clear

sleep 2
echo $(timidity ./sound/victory-fanfare.mid)&
echo $(clear)
sleep 3
echo $(clear)
echo "PARABÉNS!"
echo ""
sleep 1
echo $(timidity ./sound/outro.mid)&
echo $(clear)
echo "PARABÉNS!"
echo ""
echo "Conseguiste chegar ao fim!"
sleep 2
echo $(clear)
echo "PARABÉNS!"
echo ""
echo "Conseguiste chegar ao fim!"
echo ""
sleep 4
echo ""
echo "HP restante: $hp_t12"
echo "Tempo restante: $time_t12"
sleep 5
echo "Espero que tenhas gostado da viagem!"
sleep 5
echo $(clear)
sleep 10

echo $(clear)
sleep 1
echo "DEAD ON TIME"
echo ""
echo ""
sleep 2
echo "Programação: António Pereira"
sleep 2
echo ""
echo "Texto/narração: António Pereira"
sleep 2
echo ""
echo "Música e efeitos sonoros: António Pereira"
echo ""
sleep 4
echo $(clear)
echo "Pressiona [enter] para terminar"
read quit

sleep 1

exit 1
