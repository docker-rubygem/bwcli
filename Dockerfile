FROM ruby:2.4

MAINTAINER thinkbot@outlook.de

ENV VERSION=2.0.2

RUN gem install bwcli --version ${VERSION} --no-format-exec

WORKDIR /tmp

ENTRYPOINT ["bwcli"]
CMD ["--help"]
