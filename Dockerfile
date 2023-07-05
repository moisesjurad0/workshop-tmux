FROM alpine

RUN apk update && apk add openssh tmux

RUN adduser -D user && echo "user:user" | chpasswd

RUN ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"]
