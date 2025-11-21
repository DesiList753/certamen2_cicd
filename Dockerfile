FROM nginx:latest
COPY ./index.html /usr/share/nginx/html/
COPY ./js /usr/share/nginx/html/js
COPY ./img /usr/share/nginx/html/img
COPY ./vendor /usr/share/nginx/html/vendor
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]