#!/bin/bash
# Skript küsib kasutajalt täisarvu ja teavitab, kas see on paaris või paaritu.

echo -n "Sisesta suvaline täisarv: "
read arv

# Arvutame jäägi 2-ga jagamisel
jaak=$(expr $arv % 2)

# Kontrollime tingimuslausega
if [ $jaak -eq 0 ]; then
    echo "Antud arv on paaris"
else
    echo "Antud arv on paaritu"
fi
