# telegraph

```
 _       _                            _
| |_ ___| | ___  __ _ _ __ __ _ _ __ | |__
| __/ _ \ |/ _ \/ _` | '__/ _` | '_ \| '_ \
| ||  __/ |  __/ (_| | | | (_| | |_) | | | |
 \__\___|_|\___|\__, |_|  \__,_| .__/|_| |_|
                |___/          |_|
```

Terminal P2P messenger implemented in C.

This project was created for education purposes.

** WORK IN PROGRESS **

DEFAULTPOST: 1858

Features:
 - Basic messaging
 - Minimalistic text/terminal based UI
 - [P2P](https://en.wikipedia.org/wiki/Peer-to-peer) connection between clients
 - SSL/TLS e2e encryption

Build requrements:
 - C compiler with standard library, `gcc` for example
 - `gnutls`
 - `libuuid` that can be part of `e2fsprogs` or `util-linux`
 - `curses` or `ncurses`
 - `pthreads`, might be installed with C standard library

Link to read for developing:
 - [Изучая go: пишем p2p мессенджер со сквозным шифрованием](https://habr.com/ru/post/437686/)
 - [Analysis of P2P: How to communicate between two terminals without public IP?](https://www.programmersought.com/article/23564027459/)
 - [Creating a Peer to Peer Network in C](https://www.youtube.com/watch?v=oHBi8k31fgM)
 - [TCP hole punching](https://en.wikipedia.org/wiki/TCP_hole_punching)
 - [Peer-to-Peer Communication Across Network Address Translators](https://bford.info/pub/net/p2pnat/)
 - [Traversal Using Relays around NAT](https://en.wikipedia.org/wiki/Traversal_Using_Relays_around_NAT)
 - [A simple UDP-based NAT hole punching example for C](https://github.com/ckennelly/hole-punch)
 - [Simple threadpool implementation](https://programmer.group/c-simple-thread-pool-based-on-pthread-implementation.html)
 - [Multithreading with a Thread Pool in C](https://www.youtube.com/watch?v=WmDOHh7k0Ag)
 - [Building from different source folders to different target folders](https://riptutorial.com/makefile/example/21376/building-from-different-source-folders-to-different-target-folders)
 - [About byteorder](https://www.youtube.com/watch?v=OoHich9BPxg)
 - [passing a struct over TCP (SOCKi\_STREAM) socket in C](https://stackoverflow.com/questions/8000851/passing-a-struct-over-tcp-sock-stream-socket-in-c)
