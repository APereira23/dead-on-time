#!/bin/bash


echo $(timidity ./sound/SnA.mid --loop)&
echo $(clear)

sleep 1
echo "..."
sleep 1
echo "..."
echo $(clear)
sleep 1
echo "..."

bash t12.sh

exit 1
