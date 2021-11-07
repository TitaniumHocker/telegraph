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
 - `curses` or `ncurses`
 - `pthreads`, might be installed with C standard library

Links to read for developing:
 - [Simple UDP multicast example in C](https://gist.github.com/hostilefork/f7cae3dc33e7416f2dd25a402857b6c6)
 - [Изучая go: пишем p2p мессенджер со сквозным шифрованием](https://habr.com/ru/post/437686/)
 - [Analysis of P2P: How to communicate between two terminals without public IP?](https://www.programmersought.com/article/23564027459/)
 - [TCP hole punching](https://en.wikipedia.org/wiki/TCP_hole_punching)
 - [Peer-to-Peer Communication Across Network Address Translators](https://bford.info/pub/net/p2pnat/)
 - [Traversal Using Relays around NAT](https://en.wikipedia.org/wiki/Traversal_Using_Relays_around_NAT)
 - [Simple threadpool implementation](https://programmer.group/c-simple-thread-pool-based-on-pthread-implementation.html)
 - [Building from different source folders to different target folders](https://riptutorial.com/makefile/example/21376/building-from-different-source-folders-to-different-target-folders)
 - [passing a struct over TCP (SOCK\_STREAM) socket in C](https://stackoverflow.com/questions/8000851/passing-a-struct-over-tcp-sock-stream-socket-in-c)
 - [A simple UDP-based NAT hole punching example for C](https://github.com/ckennelly/hole-punch)

Links to watch for developing:
 - [Creating a Peer to Peer Network in C](https://www.youtube.com/watch?v=oHBi8k31fgM)
 - [Multithreading with a Thread Pool in C](https://www.youtube.com/watch?v=WmDOHh7k0Ag)
 - [About byteorder](https://www.youtube.com/watch?v=OoHich9BPxg)
 - [Peer-to-peer (P2P) Networks - Basic Algorithms](https://www.youtube.com/watch?v=kXyVqk3EbwE)
 - [Introduction to Decentralized P2P Apps](https://www.youtube.com/watch?v=oCS05QSQ-1k)
 - [How to write a multithreaded server in C (threads, sockets)](https://www.youtube.com/watch?v=Pg_4Jz8ZIH4)
 - [Multithreaded Server Part 2: Thread Pools](https://www.youtube.com/watch?v=FMNnusHqjpw)
 - [How to write a multithreaded webserver using condition variables (Part 3)](https://www.youtube.com/watch?v=P6Z5K8zmEmc)
 - [How one thread listens to many sockets with select in C.](https://www.youtube.com/watch?v=Y6pFtgRdUts)
 - [Safety and Speed Issues with Threads. (pthreads, mutex, locks)](https://www.youtube.com/watch?v=9axu8CUvOKY)
