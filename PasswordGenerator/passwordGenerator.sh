#!/bin/bash

echo "Welcome To Password Generator"

while true; do
    echo -e "\nPlease enter the length of Password"
    read PASSLENGTH

    if [ "$PASSLENGTH" -le 0 ]; then
        echo "Enter a Valid Password Length"
    else
        break
    fi
done

echo -e "\nYou have chosen Password Length: $PASSLENGTH"

while true; do
    echo -e "\nNow, Please Enter Number of Sequences You Want To Generate"
    read seqq

    if [ "$seqq" -le 0 ]; then
        echo "Enter a Valid Number of Sequences"
    else
        break
    fi
done

for ((i=0; i<$seqq; i++)); do
    cat /dev/urandom | tr -dc '[:print:]' | head -c "$PASSLENGTH"
    echo -e "\n"
done
