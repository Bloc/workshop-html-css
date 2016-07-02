FROM ruby

VOLUME    ["/data"]
WORKDIR   /data

ADD Gemfile /data
ADD Gemfile.lock /data

RUN bundle install
RUN apt-get update

# Docker caches ADD directory commands based on directory path.
# Save this for last so everything above is built from the cache.
ADD . /data
CMD tail -f /dev/null
