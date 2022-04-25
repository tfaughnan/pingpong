#!/bin/sh

export HOST="chat.ndlug.org"
export PORT="6697"
export NICK="pingpong"
export CHAN="#bots"

socat EXEC:./bot.awk,sigint OPENSSL:"$HOST":"$PORT"
