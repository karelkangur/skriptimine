#!/bin/bash

# Paigaldatava/kontrollitava paketi nimi
PAKK="apache2"

# Kontrollime, kas apache2 pakett on paigaldatud.
# dpkg-query näitab paketi staatust.
# grep otsib väljundist teksti "ok installed".
dpkg-query -W -f='${Status}' "$PAKK" 2>/dev/null | grep -q "ok installed"

# Salvestame eelmise käsu exit status'e.
TULEMUS=$?

# Kui grep leidis "ok installed", on exit status 0.
if [ "$TULEMUS" -eq 0 ]; then

    echo "$PAKK on juba paigaldatud."
    echo "Teenuse staatus:"
    systemctl status "$PAKK" --no-pager

else

    echo "$PAKK ei ole paigaldatud."
    echo "Paigaldan paketi..."

    sudo apt update
    sudo apt install -y "$PAKK"

    # Kontrollime, kas paigaldamine õnnestus.
    if [ $? -eq 0 ]; then
        echo "$PAKK paigaldamine õnnestus."
        systemctl status "$PAKK" --no-pager
    else
        echo "$PAKK paigaldamine ebaõnnestus."
        exit 1
    fi

fi
