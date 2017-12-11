#!/bin/bash
### Уведомление об авторизации на сервере
#slack hook url
SLACK_URL="https://hooks.slack.com/services/XXXXXXXXX/XXXXXXXXX/XXXXXXXXXXXXXXXXXXXXXXXX"

# Получаем ip адрес
USER_IP=$(echo $SSH_CLIENT | awk '{ print $1}')

# Формируем сообщение для отправки
BOT_MESSAGE="Server login on $(whoami) from $USER_IP"

# Отправляем сообщение в чат:
curl -X POST --data-urlencode "payload={\"text\": \"$BOT_MESSAGE\"}" $SLACK_URL