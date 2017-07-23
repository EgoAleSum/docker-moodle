FROM jhardison/moodle
MAINTAINER Alessandro Segala <no@email.com>

# Add Minio
RUN curl -L https://dl.minio.io/server/minio/release/linux-amd64/minio -o /usr/local/bin/minio && \
  chmod +x /usr/local/bin/minio

COPY minio-gateway.service /etc/systemd/system/minio-gateway.service

# Updated configuration file
COPY moodle-config.php /var/www/html/config.php

# New start-container.sh script
COPY start-container.sh /start-container.sh
RUN chmod +x /start-container.sh

EXPOSE 80 443

CMD ["/start-container.sh"]
