#!/bin/bash

  # Non-interactive install
  export DEBIAN_FRONTEND=noninteractive

  # Update the server
  apt-get update -y
  
  # Install LAMP and misc
  apt-get install -y mysql-server apache2 php libapache2-mod-php php-mysql python-pip git vim unzip wget composer jq tree

  # Start services
  systemctl start apache2 mysqld
  systemctl enable apache2 mysqld

  # Create a simple page
  echo "<?php phpinfo(); ?>" > /var/www/html/index.php;
