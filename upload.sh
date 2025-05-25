#!/bin/bash

# Before using this, run ssh-copy-id site@pallas.mythic-beasts.com
rsync -avP -e --delete ssh ./output/ site@pallas.mythic-beasts.com:www/www.jonmsterling.com/
