#!/bin/bash

read -p "Ingrese el nombre del directorio: " dir_nombre


read -p "Ingrese el nombre del primer archivo: " archivo1
read -p "Ingrese el nombre del segundo archivo: " archivo2

mkdir -p "$dir_nombre"
touch "$dir_nombre/$archivo1.txt"
touch "$dir_nombre/$archivo2.txt"

echo "Estructura creada: "

tree "$dir_nombre"