#!/bin/bash

cp htaccess output/.htaccess
# Before using this, run ssh-copy-id site@pallas.mythic-beasts.com
rsync -avP --delete -e ssh ./output/ site@pallas.mythic-beasts.com:www/www.jonmsterling.com/
