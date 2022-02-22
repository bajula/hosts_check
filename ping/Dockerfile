FROM ubuntu
RUN apt-get update && apt-get install -y
COPY ./check_hosts.sh /opt/check_hosts.sh
#RUN apt-get install -y cron
#COPY crontab-hosts /etc/cron.d/contrab-hosts
#RUN chmod 0644 /etc/cron.d/crontab-hosts &&\
#    crontab /etc/cron.d/crontab-hosts
CMD ["bash"]
LABEL version="1.0"
LABEL description="This is the  ping check container"
