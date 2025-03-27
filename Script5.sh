#!/bin/bash

mkdir Directorio
ls
cd Directorio

for i in {1..5}; do
    mkdir "Directorio_$i"

    for j in {1..5}; do
        touch "Directorio_$i/Archivo_$j.txt"
    done
done

tree Directorio