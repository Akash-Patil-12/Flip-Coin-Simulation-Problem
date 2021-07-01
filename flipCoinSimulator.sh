#!/bin/bash -x

headWin=0
TailWin=0

for ((i=0;i<42;i++))
do
	win=$((RANDOM%2))

	if (( $win == 1 ))
	then
   	 ((headWin=$headWin+1))
	else
   	 ((TailWin=$TailWin+1))
	fi
   if (( $headWin == 21 || $TailWin == 21 ))
   then
      break
   fi
done
echo "Head : $headWin times"
echo "Tail : $TailWin times"
if (( $headWin == $TailWin ))
then
   echo Tie
else
   echo Win
	if (( $headWin > $TailWin ))
	then
   	echo "Head Win by $(($headWin-$TailWin)) counts"
	elif (($TailWin > $headWin ))
	then
   	echo "Tail win by $(($TailWin-$headWin)) counts"
   fi
fi
