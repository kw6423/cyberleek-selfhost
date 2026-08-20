FROM nginx:alpine

ENV NGINX_ENVSUBST_OUTPUT_DIR=/usr/share/nginx/html

COPY ./public /usr/share/nginx/html

COPY ./templates /etc/nginx/templates/