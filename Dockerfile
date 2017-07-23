FROM jmhardison/docker-moodle
MAINTAINER Alessandro Segala <no@email.com>

EXPOSE 80 443
COPY moodle-config.php /var/www/html/config.php

CMD ["/etc/apache2/foreground.sh"]
