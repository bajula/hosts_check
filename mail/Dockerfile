FROM ubuntu
RUN apt-get update && apt-get install -y
COPY ./hosts_mail.sh /opt/hosts_mail.sh
RUN apt-get install -y cron
COPY cronmail /etc/cron.d/cronmail
RUN chmod 0644 /etc/cron.d/cronmail &&\
    crontab /etc/cron.d/cronmail
CMD ["bash"]
