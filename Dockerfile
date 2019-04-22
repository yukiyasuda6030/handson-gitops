FROM nginx
COPY ./html /usr/share/nginx/html
ENV PORT 80
EXPOSE $PORT
CMD /bin/sed -i -e "s/80/$PORT/" /etc/nginx/conf.d/default.conf && /usr/sbin/nginx -g 'daemon off;'
