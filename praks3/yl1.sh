#!/bin/bash
# Skript küsib kasutaja ees- ja perenime ning väljastab tervituse.

# Küsitakse ees- ja perenime ning salvestatakse need eraldi muutujatesse
read -p "Sisesta oma ees- ja perenimi: " eesnimi perenimi

# Väljastatakse tervitus
echo "Tere tulemast, $eesnimi $perenimi"
echo "Sinu eesnimi on $eesnimi ja perenimi on $perenimi"
