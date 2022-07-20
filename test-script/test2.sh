#event simulation

echo $carry

echo "starting event 2"
sleep 2
echo "your current hp is $carry"
sleep 1
echo "loading"
sleep 2
echo "#..........."
sleep 1
echo "##.........."
sleep 1
echo "###........."
sleep 1
echo "#######....."
sleep 1
echo "###########."

echo "event testing"

hp_ev2_pre=$carry

hp_ev2_pos=$(( $carry - 10 ))


echo "you have been hit for 10 hit points"
sleep 1
echo "Current HP - $hp_ev2_pos"

carry=$hp_ev2_pos
export carry
./test3.sh

sleep 1

echo $(bash test3.sh)

exit 1

