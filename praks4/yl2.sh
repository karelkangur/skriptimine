#!/bin/bash
# Skript arvutab vajalike busside arvu vastavalt reisijate ja kohtade arvule.

echo -n "Sisesta reisijate arv: "
read reisijad

echo -n "Sisesta kohtade arv bussis: "
read kohad

bussid=$(($reisijad / $kohad))
ylejaanud=$(($reisijad % $kohad))

if test $ylejaanud -gt 0; then
    bussid=$(($bussid + 1))
fi

echo "Kokku on vaja $bussid bussi"
