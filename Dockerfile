FROM nginx
ENV LOGLEVEL default
ENV DEBUG default

COPY . /app
WORKDIR /app

RUN rm -f /etc/nginx/conf.d/*

COPY ssl.tpl /app/ssl.tpl
RUN chmod 775 /app/nginxwrapper.sh
RUN chmod 775 /app/ssl.tpl

EXPOSE 80
CMD ["/app/nginxwrapper.sh"]
