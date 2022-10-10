FROM nginx:1.23

COPY nginx.conf /etc/nginx/nginx.conf
COPY default.conf /etc/nginx/conf.d/default.conf

RUN mkdir -p /var/log/nginx/log && \
  touch /var/log/nginx/log/access.log && \
  touch /var/log/nginx/log/error.log
