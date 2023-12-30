#!/bin/bash

suma_dijeljivih=0

# Čitanje datoteke po linijama i zbrajanje brojeva djeljivih s 3
while IFS= read -r line
do
    number=$((line))
    if (( number % 3 == 0 )); then
        suma_dijeljivih=$((suma_dijeljivih + number))
    fi
done < "1.txt"

echo "Zbroj brojeva djeljivih s 3 je: $suma_dijeljivih"
