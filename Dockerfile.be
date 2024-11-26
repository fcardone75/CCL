FROM wodby/php:8.2

COPY . /var/www/html

#RUN php bin/console cache:warmup --env=prod    


EXPOSE  9000
