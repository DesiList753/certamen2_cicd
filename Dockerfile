FROM nginx:1.24-alpine
COPY ./nginx.conf /etc/nginx/nginx.conf
COPY ./index.html /usr/share/nginx/html/
COPY ./js /usr/share/nginx/html/js
COPY ./img /usr/share/nginx/html/img
COPY ./vendor /usr/share/nginx/html/vendor
RUN chown -R nginx:nginx /usr/share/nginx/html && chmod -R 755 /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]