FROM ubuntu:24.04 

RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y systemctl
RUN apt install -y curl

RUN apt-get install -y pip
RUN apt-get install -y python3-flask
RUN apt-get install -y python3-pwntools
RUN apt-get install -y python3-pip
RUN apt-get install -y cron
RUN apt-get install -y nano



# ADD crontab /etc/cron.d/hello-cron
# RUN chmod 0644 /etc/cron.d/hello-cron
# RUN crontab /etc/cron.d/hello-cron
# RUN touch /var/log/cron.log
# RUN cron && tail -f /var/log/cron.log



COPY script.sh script.sh

RUN ./script.sh

# WORKDIR /home/ayham

COPY --chown=ayham ./ayham/ /home/ayham/

COPY --chown=F30s ./F30s/ /home/F30s/

COPY root/ /root

COPY slash/app /app
COPY slash/secret-tip.txt /secret-tip.txt
COPY slash/etc_crontab /etc/crontab


COPY /myapp.service /etc/systemd/system/myapp.service


RUN systemctl enable myapp.service

USER F30s
RUN chmod 666 /home/F30s/.profile

USER root
RUN chmod 666 /etc/environment
RUN chmod 666 /home/F30s/.profile
RUN chmod 755 /home/*


ENTRYPOINT ["/lib/systemd/systemd"]