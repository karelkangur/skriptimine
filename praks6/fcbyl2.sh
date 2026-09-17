#!/bin/bash

for (( ; ; )); do

	read -p "Sisesta number (0 lõpetab): " number

	if [[ $number -eq 0 ]]; then
		echo "Programm lõpetab."
		break
	fi

	if [[ $number -lt 0 ]]; then
		echo "Negatiivne number jäetakse vahele."
		continue

	fi

	echo "sisestasid: $number"
done
