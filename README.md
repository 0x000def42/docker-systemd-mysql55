# Dockerized mysql on systemd unit

Requirements:
 - runned docker service

How to install:
  - `git clone git@github.com:0x000def42/docker-systemd-mysql55.git`
  - `cd docker-systemd-mysql55 && sudo make`

It's will: 
- build mysql:5.5 docker image
- create docker volume `mysql55.service.data`
- copy `mysql55` unit into `/etc/systemd/system/mysql55.service`
- and run `systemctl enable mysql55.service` and `systemctl restart mysql55.service`

Mysql starts on 3306 port. Access to it with user root and password root