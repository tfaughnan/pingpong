# pingpong

An IRC bot to make sure _other_ IRC bots respond to server pings.

The script requires a POSIX shell, awk, and socat, and requires four
command-line arguments:

`$ ./pingpong <host> <port> <nick> <chan>`

The `openrc` directory contains init files for running pingpong as a supervised
service. For convenience, a Makefile with an install target is included, though
it is only intended for use on Alpine Linux systems.
