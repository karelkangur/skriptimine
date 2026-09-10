#!/bin/bash
# Skript arvutab vajalike busside arvu vastavalt reisijate ja kohtade arvule.

echo -n "Sisesta reisijate arv: "
read reisijaid

echo -n "Sisesta kohtade arv bussis: "
read kohti

# Täielikult täidetud busside arv ja ülejäänud reisijad
bussid=$(expr $reisijaid / $kohti)
jaak=$(expr $reisijaid % $kohti)

# Kui keegi jäi maha, on vaja lisabussi
if [ $jaak -gt 0 ]; then
    bussid=$(expr $bussid + 1)
fi

echo "Kokku on vaja $bussid bussi"
