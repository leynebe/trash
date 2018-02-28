#!/bin/bash

  # Update the server
  yum update -y
  
  # Install LAMP and misc
  yum install -y mariadb-server mariadb httpd php php-mysql

  # Set permissions
  chown -R apache:apache /var/www/html

  # Restore context
  restorecon -Rv /var/www/html

  # Start services
  systemctl start httpd mariadb
  systemctl enable httpd mariadb

  # Create a simple page
  echo "<?php phpinfo(); ?>" > /var/www/html/index.php;
