#!/bin/awk -f

BEGIN {
    printf "USER %s 8 * :deckard's PONG enforcer\r\n", ENVIRON["NICK"]
    printf "NICK %s\r\n", ENVIRON["NICK"]
    printf "JOIN %s\r\n", ENVIRON["CHAN"]
    fflush()
}

/^PING/ {
    printf "PONG %s\r\n", $2
    fflush()
}

/^[^ ]+ QUIT :Ping timeout/ {
    start = index($1, ":")
    end = index($1, "!")
    target = substr($1, start + 1, end - start - 1)
    printf "PRIVMSG %s :%s: when you receive a \002PING\002, ", ENVIRON["CHAN"], target
    printf "you must reply with a \002PONG\002!\r\n"
    printf "PRIVMSG %s :for more info, see RFC 1459 sec. 4.6.2 @ ", ENVIRON["CHAN"]
    printf "https://datatracker.ietf.org/doc/html/rfc1459#section-4.6.2\r\n"
    fflush()
}
