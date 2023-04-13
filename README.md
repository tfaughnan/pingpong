# pingpong

An IRC bot to make sure _other_ IRC bots respond to server pings.

The script requires a POSIX shell, awk, and socat, and requires four
command-line arguments:

`$ ./pingpong <host> <port> <nick> <chan>`

The `openrc` directory contains init files for running pingpong as a supervised
service.
