#!/bin/bash

echo "loading..."
echo "             __o"
echo "           _ \<_"
echo "     (((  (_)/(_)"
sleep 2
echo "loading..."
echo "                  __o"
echo "                _ \<_"
echo "          (((  (_)/(_)"
sleep 2
echo "..."
sleep 1
hp=$(( 60 ))
export $hp
./t1a.sh

echo $(bash t1a.sh)

exit 1

