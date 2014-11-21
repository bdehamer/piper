FROM debian:wheezy

RUN apt-get update && apt-get install -y wamerican perl

ADD word.sh /tmp/word.sh
RUN chmod +x /tmp/word.sh

ENTRYPOINT ["/tmp/word.sh"]


