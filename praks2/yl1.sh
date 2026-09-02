#!/bin/bash
# Skript väljastab kasutajale tervituse ilma reavahetusteta samal real.

# 1. Väljasta "Tere, " ilma reavahetuseta (-n lipp jätab reavahetuse ära)
echo -n "Tere, "

# 2. Tekita muutuja kasutaja nimega ja väljasta ilma reavahetuseta
KASUTAJA="User"
echo -n "$KASUTAJA"

# 3. Väljasta "!" koos reavahetusega
echo "!"
