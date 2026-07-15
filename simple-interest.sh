#!/bin/bash

# Script simple para calcular el interés simple

echo "--- Calculadora de Interés Simple ---"

# Solicitar datos al usuario
read -p "Introduce el capital principal ($): " p
read -p "Introduce la tasa de interés anual (%): " r
read -p "Introduce el tiempo en años: " t

# Fórmula del interés simple: I = (P * R * T) / 100
# Se utiliza 'bc' (calculadora de precisión) para manejar decimales
interest=$(echo "scale=2; ($p * $r * $t) / 100" | bc)

# Calcular el monto total
total_amount=$(echo "scale=2; $p + $interest" | bc)

# Mostrar resultados
echo "-------------------------------------"
echo "Interés ganado: $$interest"
echo "Monto total a pagar/recibir: $$total_amount"
