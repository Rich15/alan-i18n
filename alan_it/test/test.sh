#!/bin/bash

echo -e "\n## Compile Adventures"
echo -e   "#####################\n"
for adv in *.alan; do
	echo "Compiling: $adv"
	alan --warnings -include ../Foundation $adv
done

echo -e "\n## Run Tests Scripts"
echo -e   "####################\n"
for a3c in *.a3c; do
	echo -e "=> Testing \"$a3c\":"
	solPatt="${a3c%.a3c}*.a3s"
	for a3s in $solPatt; do
		a3t="${a3s%.a3s}.a3t"
		echo "   \"$a3s\""
		arun -r $a3c < $a3s > $a3t
	done
done
