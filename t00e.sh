#!/bin/bash

sleep 1
echo $(clear)
#intro#
echo "loading..."
echo "        __o"
echo "      _ \<_"
echo "(((  (_)/(_)"
sleep 3
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

echo "Starting game..."
sleep 1
echo "..."
sleep 1

#MUSIC
echo $(timidity ./sound/SnA.mid --loop)&
echo $(clear)
#MUSIC
echo "It's monday morning and you are late for work!!!"
sleep 3
echo "Still half asleep, you jump up from bed, hastingly put on some clothes and rush to the door."
sleep 5
echo "Outside, you hop on your trusty old bicycle and start pedaling away as fast as you can."
sleep 5
echo $(clear)
sleep 1
echo "Will you get to work on time?"
sleep 2
echo "Will you even make it there?"
sleep 3
echo $(clear)
echo "Everything's up to you..."
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

export carry
./t01e.sh

echo $(bash t01e.sh)

exit 1

