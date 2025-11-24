#!/bin/bash

# Simulación de ventas para un año, 30 ventas por mes

# Array con los precios de los 30 productos existentes.
# Asegúrate de que el orden y la cantidad coincidan con los IDs de producto (1-30)
declare -a precios=(32.00 2.50 250.00 120.00 450.00 350.00 22.00 32.00 25.00 69.00 200.00 18.00 25.00 2590.00 3400.00 5500.00 9400.00 23500.00 7390.00 3.00 100.00 3400.00 200.00 2100.00 4000.00 20.00 150.00 10450.00 12300.00 1.00)

id_documento_actual=1
nro_documento_actual=1

for month in {1..12}; do
  days_in_month=30
  if [ "$month" -eq 2 ]; then
    days_in_month=28 # Asumimos no bisiesto para 2023
  fi

  for i in {1..30}; do
    day=$(( (i % days_in_month) + 1 ))
    nro_documento=$(printf "%08d" "$nro_documento_actual")
    id_user=$(( ( RANDOM % 5 ) + 1 ))
    fecha_creacion=$(date -d "2023-$month-$day" "+%Y-%m-%d %H:%M:%S")
    razon_social="Cliente $(( ( RANDOM % 100 ) + 1 ))"
    direccion_entrega="Dirección de entrega ficticia $(( ( RANDOM % 100 ) + 1 ))"
    referencia="Referencia ficticia $(( ( RANDOM % 50 ) + 1 ))"
    
    # 80% COMPLETADO, 20% ANULADO
    random_estado=$(( RANDOM % 100 ))
    if [ $random_estado -lt 80 ]; then
      estado="COMPLETADO"
    else
      estado="ANULADO"
    fi
    
    nro_serie="F001"

    # Generar detalles de la venta
    total_venta=0
    num_detalles=$(( ( RANDOM % 5 ) + 1 )) # Entre 1 y 5 detalles por venta
    detalle_inserts=()

    for ((j=0; j<num_detalles; j++)); do
      id_producto=$(( ( RANDOM % 30 ) + 1 ))
      cantidad=$(( ( RANDOM % 10 ) + 1 ))
      precio_unitario=${precios[$id_producto-1]}
      subtotal=$(echo "$cantidad * $precio_unitario" | bc)
      total_venta=$(echo "$total_venta + $subtotal" | bc)

      detalle_inserts+=("INSERT INTO detalle_documento_venta (id_documento, id_producto, cantidad, precio_unitario, subtotal) VALUES ($id_documento_actual, $id_producto, $cantidad, $precio_unitario, $subtotal);")
    done

    # Insert del documento_venta con el total calculado
    echo "INSERT INTO documento_venta (id_documento, razon_social, nro_serie, nro_documento, direccion_entrega, referencia, total, fecha_creacion, estado, id_user) VALUES ($id_documento_actual, '$razon_social', '$nro_serie', '$nro_documento', '$direccion_entrega', '$referencia', $total_venta, '$fecha_creacion', '$estado', $id_user);"

    # Inserts de los detalles
    for insert_sql in "${detalle_inserts[@]}"; do
      echo "$insert_sql"
    done

    ((id_documento_actual++))
    ((nro_documento_actual++))
  done
done



