FROM timveil/docker-hadoop-hive-base

LABEL maintainer="tjveil@gmail.com"

ADD run.sh /run.sh
RUN chmod a+x /run.sh

CMD ["/run.sh"]