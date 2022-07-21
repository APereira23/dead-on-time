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

hp_t4_pre="25"   #$carryhp3

time_t4_pre="25"   #$carrytime3

echo "PROGRESS: Home ............o-o............................. Work"
echo "HP: $hp_t4_pre"
echo "Time: $time_t4_pre"
sleep 3
echo "..."
sleep 1

#event













#failconditions

if [[ $hp_t4_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t4_post -le 0 ]]; then
                echo "Out of time!"
                sleep 2
                echo "GAME OVER"
                sleep 3
                exit 1

else
echo "..."
echo "Press [enter] to continue"
fi

#transition

read key

carryhp4=$hp_t4_post
carrytime4=$time_t4_post

export carryhp4 carrytime4
./t5a.sh

sleep 1

echo $(bash t5a.sh)

exit 1
