FROM centos:7


RUN \
    dnf install -y nginx && \
    yum install -y yum-utils http://rpms.remirepo.net/enterprise/remi-release-8.rpm && \
    yum -y install php php-fpm

RUN mkdir /nginx_php

COPY conf/nginx.conf /etc/nginx/conf.d/default.conf

COPY conf/start.sh /start.sh

RUN echo "<?php phpinfo(); ?>" >/nginx_php/test.php

RUN chmod +x /start.sh

CMD /start.sh  
