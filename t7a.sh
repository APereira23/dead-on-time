#!/bin/bash

echo "t7a.sh"

hp_t7_pre=$carryhp6
time_t7_pre=$carrytime6

echo "$hp_t7_pre hp"
echo "$time_t7_pre time"

sleep 2

echo "..."
echo "-10 hp"
hp_t7_post=$(( $hp_t7_pre - 10 ))
time_t7_post=$time_t7_pre
echo "Current hp: $hp_t7_post"
echo "Current time: $time_t7_post"

sleep 2
echo "..."

carryhp7=$hp_t7_post
carrytime7=$time_t7_post

export carryhp7 carrytime7
./t8a.sh

sleep 1

echo $(bash t8a.sh)

exit 1

