#!/usr/bin/env fish

# Here i can bring options from an specific file similarily to what I use in scenario script.
set options 'Default' 'Office' 'Roma' 'Alhelies'
# set chosen_option (printf "%s\n" $options | rofi -dmenu -p "Choose an audio profile" )

set chosen_option (for opt in $options; echo $opt; end | rofi -dmenu -p "Choose an audio profile")

# Ruta al archivo que almacena el perfil actual
set perfil_actual_file "$HOME/.config/waybar/current_audio_profile"

if test $chosen_option = "Default"
    set -x WP_PROFILE "default"
    set opcion_mostrada "Default"
else if test $chosen_option = "Office"
    set -x WP_PROFILE "office"
    set opcion_mostrada "Office"
else if test $chosen_option = "Alhelies"
    set -x WP_PROFILE "alhelies"
    set opcion_mostrada "Alhelies"
else if test $chosen_option = "Roma"
    set -x WP_PROFILE "roma"
    set opcion_mostrada "Roma"
else
    echo "No se seleccionó un perfil válido."
    exit 1
end

# Guardar la variable de entorno en un archivo
echo "set WP_PROFILE $WP_PROFILE" > ~/.config/wireplumber/wp_profile.env

# Reiniciar WirePlumber para aplicar el nuevo perfil
systemctl --user restart wireplumber

#Actualizar el modulo especifico
pkill -SIGRTMIN+1 waybar

# Actualizar el perfil actual en Waybar con la primera letra en mayúscula
echo "$opcion_mostrada" > "$perfil_actual_file"

