# Dockerized mysql on systemd unit

Requirements:
 - runned docker service

How to install:
  - `git clone git@github.com:0x000def42/docker-systemd-mysql55.git`
  - `cd docker-systemd-mysql55 && sudo make`

It's will: 
- build mysql:5.5 docker image
- create docker volume `mysql55.service.data`
- create docker network `mysql55.network`
- copy `mysql55` unit into `/etc/systemd/system/mysql55.service`
- and run `systemctl enable mysql55.service` and `systemctl restart mysql55.service`

Mysql starts on 3306 host port. Access to it with user root and password root.
Also, connection available inside another docker containers under network `mysql55.network`
by `mysql55.service` host.

Connect another docker to network:
```
docker run --network mysql55.network something
```
or via compose file:
```
  version: '3.*'
  services:
    youapp:
      networks:
        - mysql55.network
  networks:
    mysql55.network:
      external: true
```