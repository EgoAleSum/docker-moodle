#!/bin/sh

# Write environmental variables as Minio config
echo -e "MINIO_ACCESS_KEY=$STORAGE_ACCOUNT_NAME\nMINIO_SECRET_KEY=$STORAGE_ACCOUNT_KEY" > /etc/default/minio

# Start Minio
systemctl restart minio-gateway

# Start the web server in foreground
./etc/apache2/foreground.sh