FROM saltfactory/oracle-xe:11g
MAINTAINER SungKwang Song <saltfactory@gmail.com>

ADD ./scripts /scripts
RUN chmod +x /scripts/start.sh

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

ENTRYPOINT /scripts/start.sh
