#!/bin/bash

mkdir chall
echo "Its a really noob challange" > chall/index.php
echo "Don't fuzz me" >> chall/index.php
echo "/h4ck.php" > chall/robots.txt
echo "wish" > chall/h4ck.php
echo -e "<?php if(isset(\$_GET['wish'])) { \nsystem(\$_GET['wish']);\n} ?>" >> chall/h4ck.php

#echo -e "FROM php:apache \nCOPY ./index.php /var/www/html \nCOPY ./h4ck.php /var/www/html \nCOPY ./robots.txt /var/www/html" > chall/Dockerfile

#cd chall

# Creates docker image
#sudo docker build --tag sample_chall_image .

# Creates and runs docker container
#sudo docker run -d -p 8000:80 --name chall1 sample_chall_image


# To stop the container
# sudo docker container stop chall1
