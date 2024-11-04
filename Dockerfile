# Use the official httpd image from Docker Hub
FROM httpd:latest

# Copy custom configuration file (if you have one)
# COPY ./my-httpd.conf /usr/local/apache2/conf/httpd.conf

# Copy your website files into the server's document root
COPY . /usr/local/apache2/htdocs/

# Expose port 80 to allow access to the HTTP server
EXPOSE 80

# Start the Apache HTTP server
CMD ["httpd-foreground"]