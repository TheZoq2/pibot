#!/bin/bash

# Get the BOT_TOKEN variable. This should be your secret telegram bot key
source .env

TELEGRAM_URL=https://api.telegram.org/bot${BOT_TOKEN}

# Get the ip address info
IP=`hostname -i`

TEXT="${IP}"

URL="${TELEGRAM_URL}/sendMessage"
curl $URL \
    --data-urlencode chat_id="${CHANNEL_ID}" \
    --data-urlencode text="${TEXT}"
