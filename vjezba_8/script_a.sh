#!/bin/bash

# Petlja za generiranje neparne brojeve i zapisivanje u datoteku
for ((i=1; i<=100; i+=2))
do
    echo "$i" >> 1.txt
done
