FROM nginx:1.15.12
COPY ./html /usr/share/nginx/html
ENV PORT 80
EXPOSE $PORT
CMD /bin/sed -i -e "s/listen       80;/listen       $PORT;/" /etc/nginx/conf.d/default.conf && /usr/bin/envsubst < /usr/share/nginx/html/index.html > /usr/share/nginx/html/index.html && /usr/sbin/nginx -g 'daemon off;'
