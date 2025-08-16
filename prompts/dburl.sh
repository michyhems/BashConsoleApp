#!/bin/bash

while true; do
    read -p "Do you want to enter the database url now? [Y]yes [N]no: " response
    response=$(echo "$response" | tr '[:upper:]' '[:lower:]')

    if [[ "$response" == "y" ]]; then
        echo "Enter url below:"
        read url
        sed -i "1c\DATABASE_URL = $url" .env
        break
    elif [[ "$response" == "n" ]]; then
        break
    else
        echo "Invalid response. Please answer 'y' or 'n'."
    fi
done