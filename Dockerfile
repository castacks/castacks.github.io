FROM ruby:3.2

RUN apt-get update && apt-get install -y \
    build-essential \
    nodejs \
    git \
    && rm -rf /var/lib/apt/lists/*

RUN git config --global --add safe.directory /srv/jekyll

WORKDIR /srv/jekyll

RUN gem install jekyll
RUN gem install bundler

EXPOSE 4000