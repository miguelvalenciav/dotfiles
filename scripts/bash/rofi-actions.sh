#!/bin/bash

options="Firefox\nChatGPT"

chosen="$(echo -e "$options" | rofi -dmenu -i -p 'Open:')"
case "$chosen" in
    Firefox) firefox ;;
    ChatGPT) ~/scripts/open_firefox_chatgpt.sh ;;
esac
