FROM ruby:2.7.1

RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get update -qq && apt-get install -y nodejs yarn

RUN mkdir /app
WORKDIR /app
COPY Gemfile /app/Gemfile
RUN bundle install
COPY . /app

CMD ["rails", "server", "-b", "0.0.0.0"]
