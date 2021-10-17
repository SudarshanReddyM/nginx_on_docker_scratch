FROM scratch

ADD ubuntu-base-20.04.1-base-amd64.tar /

# CMD ["bash"]

RUN apt-get update

RUN apt-get install nginx -y



# CMD ["service","nginx", "start"]

# COPY ./nginx.conf /etc/nginx/

copy ./nginx.conf /etc/nginx/nginx.conf

# RUN echo "daemon off;" >> /etc/nginx/nginx.conf

# 

# RUN service nginx start
# RUN service nginx restart

COPY ./*.html /usr/share/nginx/html/

EXPOSE 80

# STOPSIGNAL SIGTERM


# VOLUME /usr/share/nginx/html

# VOLUME /etc/nginx

CMD ["nginx", "-g", "daemon off;"]