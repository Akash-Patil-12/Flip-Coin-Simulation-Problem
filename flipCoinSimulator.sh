#!/bin/bash -x

win=$((RANDOM%2))

if (( $win == 1 ))
then
   echo "Heads"
else
   echo "Tails"
fi
