#!/bin/bash

options="Firefox\nChatGPT"

chosen="$(echo -e "$options" | rofi -dmenu -i -p 'Open:')"
case "$chosen" in
    Firefox) firefox ;;
<<<<<<< HEAD
    ChatGPT) ~/scripts/open_firefox_chatgpt.sh ;;
esac
=======
    ChatGPT) ~/scripts/open_firefox_chatgpt.sh ;;  # Aquí llamamos al script que creaste antes
esac

>>>>>>> e7ddedd2685b9344c208a2ccb90c44afd53bf63a
