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
echo "CONGRATULATIONS!"
echo ""
sleep 1
echo $(timidity ./sound/outro.mid)&
echo $(clear)
echo "CONGRATULATIONS!"
echo ""
echo "You made it to the end!"
sleep 2
echo $(clear)
echo "CONGRATULATIONS!"
echo ""
echo "You made it to the end!"
echo ""
sleep 4
echo ""
echo "Remaining HP: $hp_t12"
echo "Remaining Time: $time_t12"
sleep 5
echo "Hope you've enjoyed the ride!"
sleep 5
echo $(clear)
sleep 1
echo "I honestly don't know if anyone will ever get to this point in the game, but, if you're reading this, then"
echo "know that I am truly grateful that you've given up some of your time for this little project of mine."
echo "Hope you had fun!"
sleep 10

echo $(clear)
sleep 1
echo "DEAD ON TIME"
echo ""
echo ""
sleep 2
echo "Programming: António Pereira"
sleep 2
echo ""
echo "Text/Narration: António Pereira"
sleep 2
echo ""
echo "Music and Sound FX: António Pereira"
echo ""
sleep 4
echo $(clear)
echo "Press [enter] to quit"
read quit

sleep 1

exit 1
