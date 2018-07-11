FROM httpd:latest

RUN echo "<p>Hello World!</p>" > /usr/local/apache2/htdocs/index.html
