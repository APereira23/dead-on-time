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


hp_t7_pre=$carryhp6
time_t7_pre=$carrytime6

echo "PROGRESS: Home .....................o-o.................... Work"
echo "HP: $hp_t7_pre"
echo "Time: $time_t7_pre"
sleep 3
echo "..."
sleep 1

#event


#failconditions



#transition

carryhp7=$hp_t7_post
carrytime7=$time_t7_post

export carryhp7 carrytime7
./t8a.sh

sleep 1

echo $(bash t8a.sh)

exit 1

