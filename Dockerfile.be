FROM wodby/php:8.2



WORKDIR /var/www/html
COPY . .
    
RUN touch .env
RUN echo "variables_order = \"EGPCS\"" > /usr/local/etc/php/conf.d/BNL_variables_order.ini    

USER root
RUN mkdir -p /var/run/php-fpm && \
    chown -R wodby:wodby /var/run/php-fpm && \
    chmod 755 /var/run/php-fpm

COPY .config/php-fpm.conf /usr/local/etc/php-fpm.conf
COPY .config/www.conf /usr/local/etc/php-fpm.d/www.conf

RUN sed -i 's|/var/run/php-fpm.pid|/var/run/php-fpm/php-fpm.pid|g' /usr/local/etc/php-fpm.conf

RUN sed -i 's|user = www-data|user = wodby|g' /usr/local/etc/php-fpm.d/www.conf.default && \
    sed -i 's|group = www-data|group = wodby|g' /usr/local/etc/php-fpm.d/www.conf.default 

USER wodby
ENTRYPOINT ["php-fpm"]

EXPOSE  9000
