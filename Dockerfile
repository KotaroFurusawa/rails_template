FROM ruby:3.1.2

ENV TZ Asia/Tokyo
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /taberoute_backend
WORKDIR /taberoute_backend
ADD Gemfile /taberoute_backend/Gemfile
ADD Gemfile.lock /taberoute_backend/Gemfile.lock
RUN bundle install
COPY . /taberoute_backend

COPY entrypoint.sh /usr/bin/
RUN chmod +x /usr/bin/entrypoint.sh
ENTRYPOINT ["entrypoint.sh"]
EXPOSE 3000

CMD ["rails", "server", "-b", "0.0.0.0"]