FROM ruby:2.5

RUN apt-get update \
  && apt-get install -y nodejs \
  && apt-get clean  \
  && rm -rf /var/cache/apt/archives/* /var/lib/apt/lists/*

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
