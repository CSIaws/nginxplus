FROM nginx
ENV LOGLEVEL default
ENV DEBUG default
RUN mkdir /app
WORKDIR /app

RUN rm -f /etc/nginx/conf.d/*

COPY nginxwrapper.sh /app/nginxwrapper.sh
COPY ssl.tpl /app/ssl.tpl
RUN chmod 775 /app/nginxwrapper.sh
RUN chmod 775 /app/ssl.tpl

EXPOSE 80
#CMD ["/app/nginxwrapper.sh"]
