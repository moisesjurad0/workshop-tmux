FROM alpine

RUN apk update && apk add openssh

RUN adduser -D user && echo "user:user" | chpasswd

RUN ssh-keygen -A

CMD ["/usr/sbin/sshd", "-D"]
