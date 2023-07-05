# workshop-tmux

this workshop is to practice tmux on a docker machine on a windows host (docker kernerl configured as linux).

steps:

1. init git repo for documentation.
1. add `Dockerfile` and `docker-compose.yml` files with alpine only to have a machine to connect.
1. run `docker-compose up`
1. run `ssh user@localhost -p 2222`

    ```txt
    The authenticity of host '[localhost]:2222 ([::1]:2222)' can't be established.
    ED25519 key fingerprint is SHA256:ZmrF8ZVg5H/esEsmJIE9xHsGQkBRmswHUXzTTqp9BBU.
    This key is not known by any other names
    Are you sure you want to continue connecting (yes/no/[fingerprint])?

    #yes

    Warning: Permanently added '[localhost]:2222' (ED25519) to the list of known hosts.

    user@localhost's password: 
    
    #user

    Welcome to Alpine!

    The Alpine Wiki contains a large amount of how-to guides and general
    information about administrating Alpine systems.
    See <https://wiki.alpinelinux.org/>.

    You can setup the system with the command: setup-alpine

    You may change this message by editing /etc/motd.
    ```
