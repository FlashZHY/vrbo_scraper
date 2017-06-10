#!/bin/bash

for filename in **/**; do
    if [[ $filename == *"review"* ]]; then
        cityState=${filename%/*}
        state=$(echo $cityState | rev | cut -d'_' -f 1 | rev)
        city=${cityState%_*}
        city=$(echo $city | tr '_' ' ')
        echo "processing review for $city, $state"
        str="$city,$state"
        cityStateStr="city,state"
        sed -e "s/
        cat ${filename}.out > $filename
        rm ${filename}.out
    elif [[ $filename == *"listing"* ]]; then
        cityState=${filename%/*}
        state=$(echo $cityState | rev | cut -d'_' -f 1 | rev)
        city=${cityState%_*}
        city=$(echo $city | tr '_' ' ')
        echo "processing listing for $city, $state"
        str="$state"
        stateStr="state"
        sed -e "s/
        cat ${filename}.out > $filename
        rm ${filename}.out
    fi
done