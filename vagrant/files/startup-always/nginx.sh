#!/bin/bash

NGINX_PATH=/etc/nginx
SITES_ENABLED_PATH=$NGINX_PATH/sites-enabled

echo -n "Copying Nginx config files..."
sudo rm -rf /etc/nginx
sudo cp -rdf /var/www/puphpet/files/nginx /etc/nginx

for file in $(ls $NGINX_PATH/sites-available/*.conf); do
    cd $SITES_ENABLED_PATH
    sudo ln -sf $file
    cd -
done

nginx -t && sudo service nginx restart
echo "done!"
