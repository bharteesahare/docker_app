FROM ruby:3.3.0
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /docker_app
WORKDIR /docker_app
ADD Gemfile /docker_app/Gemfile
ADD Gemfile.lock /docker_app/Gemfile.lock
RUN bundle install
ADD . /docker_app
