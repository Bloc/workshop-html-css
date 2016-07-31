FROM ruby

VOLUME    ["/data"]
WORKDIR   /data

RUN gem install 'rspec-html-matchers'
RUN gem install 'css_parser'
RUN gem install 'pry-nav'
RUN gem install 'pry-stack_explorer'

# Docker caches ADD directory commands based on directory path.
# Save this for last so everything above is built from the cache.
ADD . /data
CMD ruby -run -e httpd . -p $PORT
