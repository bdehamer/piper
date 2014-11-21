FROM centurylink/ruby-base:2.1.2

ADD . /tmp/
WORKDIR /tmp
RUN bundle install

ENTRYPOINT ["ruby", "/tmp/piper.rb"]
