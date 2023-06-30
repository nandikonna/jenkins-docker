# Use the official ubuntu image as the base image
FROM ubuntu

# update the package list and install Apache2
RUN apt-get update -y && \
    apt-get install apache2 -y

# copy the index.html file to the Apache root directory
COPY index.html /var/www/html/

#start the Apache2 service in the foreground
CMD ["/usr/sbin/apachectl", "-D", "FOREGROUND"]

