# workshop-tmux

this workshop is to practice tmux on a docker machine on a windows host (docker kernerl configured as linux).

## 1. Previous Steps

1. init git repo for documentation.

## 2. Initialize docker machine

1. add `Dockerfile` and `docker-compose.yml` files with alpine only to have a machine to connect.
1. run `docker-compose up` or `docker-compose up --build` (this one is to rebuild the images each time you up compose e.g. add/install somenthing in your machine)

## 3. Connect to container using SSH

this ocassion I'm using git-bash, but we can user putty or openssh.
You can skip this whole section if you use the integrated terminal on docker for windows.

1. run `ssh user@localhost -p 2222`

    ```txt
    The authenticity of host '[localhost]:2222 ([::1]:2222)' can't be established.
    ED25519 key fingerprint is SHA256:ZmrF8ZVg5H/esEsmJIE9xHsGQkBRmswHUXzTTqp9BBU.
    This key is not known by any other names
    Are you sure you want to continue connecting (yes/no/[fingerprint])?
    ```

    - warning: if you rebuild images (`docker-compose up --build`) and after that you connect again to the docker-compose machine you're gonna need to update the machine information in file [path_to_user]/.ssh/known_hosts (you can just delete this file or delete those lines). If you don't this will appear

    ```txt
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    @    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
    @@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
    IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
    Someone could be eavesdropping on you right now (man-in-the-middle attack)!
    It is also possible that a host key has just been changed.
    The fingerprint for the ED25519 key sent by the remote host is
    SHA256:vQXNMWcomdhWjvDG5mB6udfN7vezkVqI/C/s7JWI/5E.
    Please contact your system administrator.
    Add correct host key in /c/Users/moise/.ssh/known_hosts to get rid of this message.
    Offending ECDSA key in /c/Users/moise/.ssh/known_hosts:7
    Host key for [localhost]:2222 has changed and you have requested strict checking.
    Host key verification failed.
    ```

1. write answer: `yes`

    ```txt
    Warning: Permanently added '[localhost]:2222' (ED25519) to the list of known hosts.

    user@localhost's password:
    ```

1. enter password:  `user`

    ```txt
    Welcome to Alpine!

    The Alpine Wiki contains a large amount of how-to guides and general
    information about administrating Alpine systems.
    See <https://wiki.alpinelinux.org/>.

    You can setup the system with the command: setup-alpine

    You may change this message by editing /etc/motd.
    ```

## 4. Running Tmux inside the container

1. run `tmux` to init a session.
1. run `exit` to close

## 5. cheatsheet

<https://home.brainofshawn.com/uploads/tmux.pdf>

### Commandline Options

- tmux new -A -s session_name ➡ create new session
- tmux attach -t session_name ➡ attach to session
- tmux ls ➡ show active sessions

### Control-B Commands (ctrl-b, then:)

- D ➡ Detach Session
- C ➡ Create Window
- N ➡ Next Window
- P ➡ Previous Window
- 0-9 ➡ Go to Window
- % ➡ Split Horizontal
- " ➡ Split Veritical
- Arrows ➡ Switch Pane
- O ➡ Next Pane
- X ➡ Close Pane/Windo

## 6. other Control-B Commands (ctrl-b, then:)

- $ ➡ Rename Session
- , ➡ Rename Window (Current Window)

## 7. Concepts

- Session ➡ the parent process
- Window ➡ live as many as you want inside the Session
