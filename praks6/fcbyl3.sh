#!/bin/bash

for i in {1..3}; do
    echo "Välimine tsükkel: $i"

    for j in {1..10}; do
        if [[ $j -eq 5 ]]; then
            echo "Katkestan mõlemad tsüklid."
            break 2
        fi

        echo "Sisemine tsükkel: $j"
    done
done
