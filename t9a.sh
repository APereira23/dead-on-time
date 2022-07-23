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

echo "PROGRESS: Home ...............................o-o.......... Work"
echo "HP: $hp_t9_pre"
echo "Time: $time_t9_pre"
sleep 3
echo "..."
sleep 1

#event

echo "Kitten!!"
sleep 2
echo $(clear)
sleep 1
echo $(timidity ./sound/kitty.mid)&
echo " /\_/\ "
echo "( ^.^ )"
echo " > ' < "
sleep 2
echo $(clear)
echo "		 /\_/\ "
echo "		( ^.^ )"
echo "		 > ' < "
sleep 2
echo $(clear)
sleep 1



#failconditions

if [[ $hp_t9_post -le 0 ]]; then
        echo "You fainted."
        sleep 2
        echo "GAME OVER"
        sleep 3
        exit 1

        elif [[ $time_t9_post -le 0 ]]; then
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

carryhp9=$hp_t9_post
carrytime9=$time_t9_post

export carryhp9 carrytime9
./t10a.sh

sleep 1

echo $(bash t10a.sh)

exit 1
