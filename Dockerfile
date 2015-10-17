FROM shippable/minv2:latest
MAINTAINER Cameron Mullen cam@skio.io

# Install jruby_9k
ENV JRUBY_VERSION 9.0.1.0
RUN /bin/bash -l -c "rvm use jruby-$JRUBY_VERSION --install" && \
    /bin/bash -l -c "rvm autolibs disable" && \
    /bin/bash -l -c "gem install bundler --no-ri --no-rdoc"