FROM ruby

VOLUME    ["/data"]
WORKDIR   /data

ADD Gemfile /data
ADD Gemfile.lock /data

RUN bundle install

# Docker caches ADD directory commands based on directory path.
# Save this for last so everything above is built from the cache.
ADD . /data
CMD ruby -run -e httpd . -p $PORT
