#!/bin/bash

# Script para convertir PNG y JPG a WebP
# Uso: ./convert-to-webp.sh [directorio]
# Si no especificas directorio, usa el actual

DIRECTORIO="${1:-.}"

echo "========================================"
echo "Convertidor de imágenes a WebP"
echo "========================================"
echo "Directorio: $DIRECTORIO"
echo ""

# Verificar si el directorio existe
if [ ! -d "$DIRECTORIO" ]; then
    echo "❌ Error: El directorio '$DIRECTORIO' no existe"
    exit 1
fi

# Verificar si ImageMagick está instalado
if ! command -v convert &> /dev/null; then
    echo "❌ Error: ImageMagick no está instalado"
    echo "Instálalo con: sudo apt-get install imagemagick"
    exit 1
fi

# Contadores
total=0
convertidos=0
errores=0

# Convertir PNG y JPG a WebP
for archivo in "$DIRECTORIO"/*.{png,jpg,jpeg,PNG,JPG,JPEG}; do
    # Saltar si no existe el archivo (en caso de que no haya coincidencias)
    if [ ! -f "$archivo" ]; then
        continue
    fi
    
    total=$((total + 1))
    nombre_base=$(basename "$archivo")
    nombre_salida="${archivo%.*}.webp"
    nombre_salida_base=$(basename "$nombre_salida")
    
    echo -n "Convirtiendo: $nombre_base → $nombre_salida_base ... "
    
    if convert "$archivo" -quality 80 "$nombre_salida" 2>/dev/null; then
        echo "✅ OK"
        convertidos=$((convertidos + 1))
    else
        echo "❌ ERROR"
        errores=$((errores + 1))
    fi
done

# Resumen
echo ""
echo "========================================"
echo "Resumen:"
echo "  Total procesados: $total"
echo "  Convertidos exitosamente: $convertidos"
echo "  Errores: $errores"
echo "========================================"

if [ $errores -eq 0 ] && [ $convertidos -gt 0 ]; then
    echo "✅ ¡Conversión completada exitosamente!"
    exit 0
else
    exit 1
fi


