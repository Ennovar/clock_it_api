FROM ruby
EXPOSE 3000
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

# env specific config
ENV DOCKER_PG_USERNAME=postgres
ENV DOCKER_PG_PASSWORD=password

# setup directory for project
RUN mkdir /app
WORKDIR /app
ADD Gemfile /app/Gemfile
ADD Gemfile.lock /app/Gemfile.lock
RUN bundle install
ADD . /app

# setup entry points
CMD ["rails", "s"]
