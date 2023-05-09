#!/bin/bash

# Buscar todos los archivos .txt en el directorio actual y guardarlos en una variable
files=$(find . -type f -name "*.txt")

# Recorrer cada archivo y contar sus líneas
for file in $files
do
    # Obtener el nombre del archivo sin la ruta
    filename=$(basename -- "$file")

    # Contar las líneas del archivo
    lines=$(wc -l < "$file")

    # Mostrar el resultado
    echo "$filename tiene $lines líneas."
done
