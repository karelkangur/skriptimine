#!/bin/bash
# Skript väljastab tervituse süsteemi sisselogitud kasutajale.

# 1. Väljasta "Tere, " ilma reavahetuseta
echo -n "Tere, "

# 2. Dünaamiline muutuja süsteemi kasutajanimega (whoami)
KASUTAJA=$(whoami)
echo -n "$KASUTAJA"

# 3. Väljasta "!" koos reavahetusega
echo "!"
