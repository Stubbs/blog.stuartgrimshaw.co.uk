#!/bin/bash

# Replace "sculpin generate" with "php sculpin.phar generate" if sculpin.phar
# was downloaded and placed in this directory instead of sculpin having been
# installed globally.

sculpin generate --env=prod
if [ $? -ne 0 ]; then echo "Could not generate the site"; exit 1; fi

rsync -avzce 'ssh' output_prod/ settleup.co.uk:/srv/www/vhosts/blog.stuartgrimshaw.co.uk/
if [ $? -ne 0 ]; then echo "Could not publish the site"; exit 1; fi
