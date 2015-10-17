FROM shippable/minv2:latest
MAINTAINER Cameron Mullen cam@skio.io

# Load RVM
RUN . /home/shippable/.rvm/scripts/rvm

# Install jruby_9k
ENV JRUBY_VERSION 9.0.1.0
RUN rvm use jruby-$JRUBY_VERSION --install && \
    rvm autolibs disable && \
    gem install bundler --no-ri --no-rdoc