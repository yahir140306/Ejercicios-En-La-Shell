#!/bin/bash

echo "Ingrese un numero y evaluar si es menor, igual o mayor a 10."

read -p "Ingrese un numero: " numero

# -gt mayor que
if [ "$numero" -gt 10 ]; then
    echo "$numero es mayor a 10."

# -lt menor que
elif [ "$numero" -lt 10 ]; then
    echo "$numero es igual a 10."

# -eq igual
elif [ "$numero" -eq 10 ]; then
    echo "$numero es igual a 10."

else
    echo "No es un numero."
fi
