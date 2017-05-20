#!/bin/bash

# This file should contain a BOT_TOKEN variable and a CHANNEL_ID variable
# If the channel is public, you can use @channel_name but if it is private,
# you need to use the channel id. 
#
# To aquire the channel ID, open the channel in web.telegram.org. The url should
# look something like https://web.telegram.org/#/im?p=c<NUMBERS>_<MORE_NUMBERS>.
# Your channel id is "-100<NUMBERS>"

source .env

TELEGRAM_URL=https://api.telegram.org/bot${BOT_TOKEN}

# Get the ip address info
IP=`hostname -i`

TEXT="${IP}"

URL="${TELEGRAM_URL}/sendMessage"
curl $URL \
    --data-urlencode chat_id="${CHANNEL_ID}" \
    --data-urlencode text="${TEXT}"
