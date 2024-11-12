#!/bin/sh
set -x  # Habilita el modo de depuración para mostrar los comandos ejecutados

ZEN_WORKSPACE="8"
PREVIOUS_WORKSPACE=""

handle() {
    echo "Evento recibido: $1"
    case $1 in
        workspace'>>'*)
            CURRENT_WORKSPACE=$(echo "$1" | cut -d'>' -f3)
            echo "Workspace actual: $CURRENT_WORKSPACE"
            echo "Workspace anterior: $PREVIOUS_WORKSPACE"

            # Verificar si el cambio involucra al workspace zen
            if [ "$CURRENT_WORKSPACE" = "$ZEN_WORKSPACE" ] || [ "$PREVIOUS_WORKSPACE" = "$ZEN_WORKSPACE" ]; then
                if [ "$CURRENT_WORKSPACE" = "$ZEN_WORKSPACE" ]; then
                    echo "Ocultando Waybar"
                    pkill -SIGUSR1 waybar
                else
                    echo "Mostrando Waybar"
                    pkill -SIGUSR2 waybar
                fi
            fi

            # Actualizar el workspace anterior
            PREVIOUS_WORKSPACE="$CURRENT_WORKSPACE"
            ;;
    esac
}

# Asignación de SOCKET_PATH
SOCKET_PATH="$XDG_RUNTIME_DIR/hypr/$HYPRLAND_INSTANCE_SIGNATURE/.socket2.sock"

# Verificar que el socket existe
if [ ! -e "$SOCKET_PATH" ]; then
    echo "El socket no existe en la ruta: $SOCKET_PATH"
    exit 1
fi

socat -U - UNIX-CONNECT:"$SOCKET_PATH" | while read -r line; do
    handle "$line"
done


