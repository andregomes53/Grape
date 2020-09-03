FROM ruby:2.7.1

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
RUN bundle install
COPY . /app

CMD ["rails", "server", "-b", "0.0.0.0"]
