FROM	debian:buster




RUN	apt-get update; apt-get -y upgrade; \
	apt-get install -y apache2 php php-gd wget unzip php-curl php-mbstring




ADD	files/ns-start /usr/bin/


RUN	cd /opt; wget https://github.com/kalcaddle/KODExplorer/archive/master.zip; \
	addgroup --system nsctl; \
	adduser --system --no-create-home --home=/var/www/html  nsctl; \
	usermod -g nsctl nsctl; \ 
	rm -rf /var/www/html; mkdir /var/www/html;  \
	chown -R nsctl.nsctl /etc/apache2; chown -R nsctl.nsctl /var/log/apache2; \
	chown -R nsctl.nsctl /var/www/html; \ 
	chmod +x /usr/bin/ns-start





ENTRYPOINT	[ "/usr/bin/ns-start" ]
