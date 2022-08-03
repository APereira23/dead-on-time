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

hp_t10_pre=$carryhp9

time_t10_pre=$carrytime9

echo "PROGRESSO: Casa .....................................o-o.... Trabalho"
echo "HP: $hp_t10_pre"
echo "Time: $time_t10_pre"
sleep 3
echo "..."
sleep 1

#event

echo "Ao entrares na última etapa do percurso, dás por ti noutro engarrafamento!"
sleep 4
echo "Hora de ponta é um pesadelo..."
sleep 2
echo "Preso no trânsito, estás a perder cada vez mais tempo precioso."
echo "Precisas de tomar uma decisão importante..."
sleep 4
echo "(Cortar pelo meio do trânsito [t] / Cortar pelo passeio [p])"
read input

sleep 1
echo "..." 
sleep 1

if [[ $input == "t" ]]; then
	echo "A decisão foi tomada."
	sleep 2
	echo "Pões todas as fichas na mesa e desatas a pedalar, zigzageando freneticamente por entre as colunas de carros parados."
	sleep 3
	echo "Conseguirás chegar ao fim da rua?"
	sleep 2
	echo "..."
	sleep 1
	echo $(clear)
	sleep 1
	echo "(Já sabes o que tens de fazer. Digita a combinação de números correta, na ordem certa,"
	echo "para realizar com sucesso a ação indicada.)"
	sleep 6
	echo "Pronto?"
	sleep 5
	echo $(clear)
	sleep 1
	echo "Memoriza os números!"
	sleep 2

	echo $(clear)
        sleep 2
        n1=$(( $RANDOM % 10 ))
        echo "		$n1"
       	sleep 1

        echo $(clear)
        n2=$(( $RANDOM % 10 ))
        echo "          		                $n2"
        sleep 1

        echo $(clear)
        n3=$(( $RANDOM % 10 ))
        echo "   				     $n3"
        sleep 1

        echo $(clear)
        n4=$(( $RANDOM % 10 ))
        echo "    $n4"
        sleep 1

        echo $(clear)
        n5=$(( $RANDOM % 10 ))
        echo "                               $n5"
        sleep 1

        echo $(clear)
        n6=$(( $RANDOM % 10 ))
        echo "							$n6"
        sleep 1

	echo $(clear)
	n7=$(( $RANDOM % 100 ))
	echo "		$n7"
        sleep 1

	echo $(clear)
        sleep 1
        echo "Digita os números na ordem certa."
        sleep 1
        read numbers
        sleep 1
        echo "..."
        sleep 1
        echo "..."
        sleep 1
	if [[ $numbers == "$n1$n2$n3$n4$n5$n6$n7" ]]; then
                echo "Muito bem!"
                sleep 2
                echo "Estás quase lá!"
                sleep 2
                timedmg=$(( $RANDOM % 3 + 3 ))
                echo "-$timedmg time"
                hp_t10_post=$hp_t10_pre
                time_t10_post=$(( $time_t10_pre - $timedmg ))
        else
	echo "Falhaste!"
	sleep 2
	echo "Chocas com um Tuktuk cheio de turistas e és violentamente projetado de cabeça contra o regaço de uma senhora alemã em pânico."
	sleep 3
	echo "..."
	sleep 1
	echo "Consegues pegar na bicicleta e foges dali. Durante tudo isto, a senhora não pára de gritar coisas como"
	sleep 1
	echo "'Du Arschloch!! Hustensaftschmuggler!!! Verpiss dich!!!!'"
	sleep 5
	echo "Ainda bem que não sabes falar alemão."
	sleep 3
	hpdmg=$(( $RANDOM % 6 + 15 ))
	timedmg=$(( $RANDOM % 6 + 10 ))
	echo "-$hpdmg hp"
	echo "-$timedmg time"
	hp_t10_post=$(( $hp_t10_pre - $hpdmg ))
	time_t10_post=$(( $time_t10_pre - $timedmg ))
	fi
	
else

echo "A decisão foi tomada."
sleep 2
echo "Sem nada a perder, cortas pelo passeio e aceleras por entre os peões furiosos."
sleep 3
echo "Consegues chegar ao fim da rua?"
sleep 4
echo "..."
sleep 1
echo $(clear)
sleep 1
echo "(Já sabes o que tens de fazer. Digita a combinação de números correta, na ordem certa,"
echo "para realizar com sucesso a ação indicada.)"
sleep 6
echo "Pronto?"
sleep 3
echo $(clear)
sleep 1
echo "Memoriza os números!"
sleep 2

echo $(clear)
sleep 2
n1=$(( $RANDOM % 10 ))
echo "          $n1"
sleep 1

echo $(clear)
n2=$(( $RANDOM % 10 ))
echo "                                          $n2"
sleep 1

echo $(clear)
n3=$(( $RANDOM % 10 ))
echo "                                       $n3"
sleep 1

echo $(clear)
n4=$(( $RANDOM % 10 ))
echo "        $n4"
sleep 1

echo $(clear)
n5=$(( $RANDOM % 10 ))
echo "$n5"
sleep 1

echo $(clear)
n6=$(( $RANDOM % 10 ))
echo "       				   $n6"
sleep 1

echo $(clear)
n7=$(( $RANDOM % 100 ))
echo "				$n7"
sleep 1

echo $(clear)
sleep 1
echo "Digita os números na ordem correta."
sleep 1
read numbers
sleep 1
echo "..."
sleep 1
echo "..."
sleep 1

	if [[ $numbers == "$n1$n2$n3$n4$n5$n6$n7" ]]; then
	        echo "Muito bem!"
	        sleep 2
	        echo "Conseguiste não só não te matar a ti próprio, como também não matar ninguém no passeio."
		echo "Vamos tentar não fazer disto um hábito, ainda assim!"
	        sleep 4
	        timedmg=$(( $RANDOM % 3 + 3 ))
	        echo "-$timedmg time"
	        hp_t10_post=$hp_t10_pre
	        time_t10_post=$(( $time_t10_pre - $timedmg ))

	else
	echo "Falhaste!"
	sleep 2
	echo "És forçado a dar uma guinada à direita para te desviares de uma velhinha, e és apanhado por um estafeta da Uber que vinha a acelerar numa trotineta elétrica."
	sleep 4
	hpdmg=$(( $RANDOM % 9 + 15 ))
	timedmg=$(( $RANDOM % 6 + 15 ))
	echo "-$hpdmg hp"
	echo "-$timedmg time"
	hpdmg=$(( $hp_t10_pre - $hpdmg ))
	timedmg=$(( $time_t10_pre - $timedmg ))
	sleep 3
	echo "O tipo da trotineta afasta-se enquanto te chama nomes."
	sleep 1
	echo "...Como se ele também pudesse andar ali naquilo!"
	sleep 2
	hp_t10_post=$(( $hp_t10_pre - $hpdmg ))
	time_t10_post=$(( $time_t10_pre - $timedmg ))
	fi
fi

#failconditions

if [[ $hp_t10_post -le 0 ]]; then
        echo "DESMAIASTE"
        sleep 2
        echo "FIM DO JOGO"
        sleep 3
        exit 1

        elif [[ $time_t10_post -le 0 ]]; then
                echo "ACABOU-SE O TEMPO!"
                sleep 2
                echo "FIM DO JOGO"
                sleep 3
                exit 1

else
echo "..."
echo "Pressiona [enter] para continuar"
fi

#transition

read key

carryhp10=$hp_t10_post
carrytime10=$time_t10_post


export carryhp10 carrytime10
./t11a.sh
sleep 1

echo $(bash t11a.sh)

exit 1
