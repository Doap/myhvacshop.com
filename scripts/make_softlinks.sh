#!/bin/bash
#mkdir -p /var/www/html/myhvacshop.com/wp-content/themes
#mkdir -p /var/www/html/myhvacshop.com/wp-content/plugins
ln -s /srv/www/uploads/sinkjuice/myhvacshop.com/uploads/ /var/www/html/myhvacshop.com/wp-content/uploads
ln -s /srv/www/uploads/sinkjuice/myhvacshop.com/themes/ /var/www/html/myhvacshop.com/wp-content/themes
ln -s /srv/www/uploads/sinkjuice/myhvacshop.com/plugins/ /var/www/html/myhvacshop.com/wp-content/plugins
/startup/genvhost.sh myhvacshop.com
/startup/make-wp-configs myhvacshop.com
echo "/startup/make-softlinks.sh just ran on `curl -s http://169.254.169.254/latest/meta-data/public-ipv4`." | tee /tmp/startup.log
