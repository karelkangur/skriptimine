#!/bin/bash
# Skript arvutab küpsisetordi jaoks vajalike küpsisepakkide arvu, kasutades expr käsku.

echo -n "Sisesta kandiku pikkus (cm): "
read kandik_pikkus

echo -n "Sisesta kandiku laius (cm): "
read kandik_laius

echo -n "Sisesta kypsise pikkus (cm): "
read kypsis_pikkus

echo -n "Sisesta kypsise laius (cm): "
read kypsis_laius

echo -n "Sisesta kihtide arv: "
read kihte

echo -n "Mitu kypsist on uhes pakis: "
read pakis

# 1. Arvutame küpsiste arvu reas ja veerus (täisarvuline jagamine)
pikuti=$(expr $kandik_pikkus / $kypsis_pikkus)
laiuti=$(expr $kandik_laius / $kypsis_laius)

# 2. Küpsiste arv ühes kihis ja tordil kokku
kihis=$(expr $pikuti \* $laiuti)
kokku=$(expr $kihis \* $kihte)

# 3. Pakkide arv (täisarvuline ümardamine ülespoole)
pakkide_arv=$(expr \( $kokku + $pakis - 1 \) / $pakis)

echo "----------------------------------------"
echo "Tordi valmistamiseks on vaja kokku $kokku kypsist."
echo "Poest tuleb osta $pakkide_arv pakki kypsiseid."
