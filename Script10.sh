#!/bin/bash

echo "Elige un tipo de pastel: "
echo "1. Chocolate"
echo "2. Vainilla"
echo "3. Fresa"
echo "4. Zanahoria"
echo "5. Tres leches"

read -p "Ingrese el numero de tu eleccion: " opcion

case $opcion in
    1)
        echo "Elegiste pastel de Chocolate."
        ;;
    2)
        echo "Elegiste pastel de Vainilla."
        ;;
    3)
        echo "Elegiste pastel de Fresa."
        ;;
    4)
        echo "Elegiste pastel de Zanahoria."
        ;;
    5)
        echo "Elegiste pastel de Tres leches."
        ;;
    *)
        echo "Opcion no valida."
        ;;
esac 