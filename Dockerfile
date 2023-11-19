FROM ruby:3.2.2

WORKDIR /app

COPY Gemfile Gemfile.lock ./

RUN gem install bundler && bundle install --jobs 20 --retry 5

COPY . .

CMD ["rails", "server", "-b", "0.0.0.0"]
