#labo4, paso 6

#C y bash

#!/bin/bash

# Compilar los programas en C
echo "Compilando los programas en C..."
for dir in src/*; do
    if [ -d "$dir" ]; then
        echo "Compilando programas en $dir..."
        cd "$dir" || exit
        gcc *.c -o programa
        cd ../..
    fi
done

# Ejecutar los programas y verificar su existencia
echo "Ejecutando y verificando la existencia de los programas..."
for dir in src/*; do
    if [ -d "$dir" ]; then
        echo "Ejecutando programas en $dir..."
        cd "$dir" || exit
        if [ -f programa ]; then
            ./programa
            rm programa
        else
            echo "Error: El programa no se ha compilado correctamente en $dir."
        fi
        cd ../..
    fi
done

echo "Proceso completado."

