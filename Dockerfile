FROM saltfactory/oracle-xe
MAINTAINER SungKwang Song <saltfactory@gmail.com>

ADD ./scripts /scripts
RUN chmod +x /scripts/start.sh

ENV NLS_LANG=KOREAN_KOREA.UTF8
ENV LANG=ko_KR.UTF-8

EXPOSE 22
EXPOSE 1521
EXPOSE 8080

CMD /scripts/start.sh
