#!/bin/bash

echo "Información de sistema:"

echo "Nombre del host: $(hostname)"
echo "Dirección IP: $(hostname -I)"
echo "Sistema operativo: $(uname)"
echo "Versión del kernel: $(uname -r)"
echo "Modelo de CPU: $(cat /proc/cpuinfo | grep 'model name' | uniq | awk -F ":" '{print $2}' | sed 's/^ //')"
echo "Memoria RAM total: $(free -h | grep Mem | awk '{print $2}')"
echo "Espacio en disco total: $(df -h | awk '$NF=="/"{printf "%d/%dGB (%s)\n", $3,$2,$5}')"
echo "Usuarios conectados:"
who
