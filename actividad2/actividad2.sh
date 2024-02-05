#!/bin/bash

echo "ingrese su usuario de git"

read usr

info=$(curl -L https://api.github.com/users/$usr)


#para extraer los datos del usuario hay que instalar jq con sudo apt-get install jq
id=$(echo "$info" | jq '.id')
cdate=$(echo "$info" | jq '.created_at')
if [ ! -d /tmp/$(date +"%d-%m-%y") ];then
    mkdir /tmp/$(date +"%d-%m-%y")
fi
touch /tmp/$(date +"%d-%m-%y")/saludos.log
echo "Hola $usr. User ID: $id. Cuenta fue creada: $cdate" > /tmp/$(date +"%d-%m-%y")/saludos.log

