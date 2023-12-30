#!/bin/bash

# Dohvaćanje sadržaja stranice i spremanje u privremenu datoteku
curl -s "https://support.microsoft.com/hr-hr/topic/opis-teksta-lorem-ipsum-dolor-sit-amet-koji-se-prikazuje-u-sustavu-pomoći-programa-word-bf3b0a9e-8f6b-c2ab-edd9-41c1f9aa2ea0" > temp.html

# Prebrojavanje riječi "lorem" u privremenoj datoteci i ispis rezultata
count=$(grep -o -i "lorem" temp.html | wc -l)
echo "Riječ 'lorem' se pojavljuje $count puta na stranici."

# Brisanje privremene datoteke
rm temp.html
