#!/bin/bash

# Obtén el volumen actual
current_volume=$(wpctl get-volume @DEFAULT_AUDIO_SINK@ | awk '{print $2 * 100}')

# Verifica si el volumen es menor al 100%
if (( $(echo "$current_volume < 100" | bc -l) )); then
    # Sube el volumen en un 5%
    wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%+
fi
