#!/bin/bash
# Skript arvutab täidetud busside arvu ja mahajäänud inimeste arvu, kasutades expr käsku.

echo -n "Mitu reisijat on grupis: "
read reisijaid

echo -n "Mitu kohta on uhes bussis: "
read kohti

# Täielikult täidetud busside arv (täisarvuline jagamine)
bussid=$(expr $reisijaid / $kohti)

# Maha jäänud inimeste arv (jäägi leidmine %)
mahajaasid=$(expr $reisijaid % $kohti)

echo "----------------------------------------"
echo "Taielikult taidetud busse: $bussid"
echo "Maha jaanud inimesi: $mahajaasid"
