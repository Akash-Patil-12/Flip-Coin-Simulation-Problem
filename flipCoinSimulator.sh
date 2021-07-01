#!/bin/bash -x

headWin=0
TailWin=0

for ((i=0;i<20;i++))
do
	win=$((RANDOM%2))

	if (( $win == 1 ))
	then
   	 ((headWin=$headWin+1))
	else
   	 ((TailWin=$TailWin+1))
	fi
done
echo "Head win : $headWin times"
echo "Tail win : $TailWin times"
