#!/bin/bash

while true; do 
    echo "Menu - Gestor de Archivos."
    echo "1) Crear un directorio"
    echo "2) Crear un archivo dentro de un directorio"
    echo "3) Renombrar archivo o directorio"
    echo "4) Copiar archivo o directorio"
    echo "5) Mover archivo o directorio"
    echo "6) Eliminar archivo o directorio"
    echo "7) Salir"

    read -p "Selecciona una opcion: " opcion

    case $opcion in
        1)
            read -p "Nombre del directorio a crear: " dir
            mkdir -p "$dir"
            echo "Directorio $dir creado."
            tree "$dir"
            ;;
        2) 
            read -p "Nombre del directorio donde crear el archivo: " dir
            if [ ! -d "$dir" ]; then
                echo "El directorio no existe. Creandolo..."
                mkdir -p "$dir"
                tree "$dir"
            fi 
            read -p "Nombre del archivo a crear: " archivo
            touch "$dir/$archivo"
            echo "Archivo $archivo creado dentro de $dir"
            tree "$dir"
            ;;
        3)
            read -p "Nombre del archivo o directorio a renombrar: " antiguo
            read -p "Nuevo nombre: " nuevo
            mv "$antiguo" "$nuevo"
            echo "$antiguo renombrando a $nuevo"
            tree "$antiguo"
            tree "$nuevo"
            ;;
        4) 
            read -p "Nombre del archivo o directorio a copiar: " origen
            read -p "Destino de la copia: " destino
            cp -r "$origen" "$destino"
            echo "$origen copiado a $destino"
            tree "$origen"
            tree "$destino"
            ;;
        5)
            read -p "Nombre del archivo o directorio a mover: " origen
            read -p "Destino del archivo o directorio: " destino
            mv "$origen" "$destino"
            echo "$origen movido a $destino"
            tree "$origen"
            tree "$destino"
            ;;
        6)
            read -p "Nomvre del archivo o directorio a eliminar: " objetivo

            if [ -d "$objetivo" ]; then
                rm -r "$objetivo"
                echo "Directorio $objetivo eliminado."
            elif [ -f "$objetivo" ]; then
                rm "$objetivo"
                echo "Archivo $objetivo eliminado."
            else
                echo "No se encontro $objetivo."
            fi
            ;;
        7)
            echo "Salir del programa."
            exit 0
            ;;
        *) 
            echo "Opcion no valida. Intentalo de nuevo."
            ;;
    esac
done