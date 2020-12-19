FROM centos

RUN \
    yum -y install \
    httpd \ 
    php php-opcache php-gd php-curl php-mysqlnd

RUN echo "<?php phpinfo(); ?>" >/var/www/html/test.php && \
    chcon -Rt httpd_sys_rw_content_t /var/www

CMD apachectl -DFOREGROUND
