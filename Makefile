all:
	docker build ./ -t mysql55.service
	docker volume create mysql55.service.data
	cp ./mysql55 /etc/systemd/system/mysql55.service
	chmod 664 /etc/systemd/system/mysql55.service
	systemctl enable mysql55.service
	systemctl restart mysql55.service