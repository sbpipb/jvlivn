FROM ruby:2.5-slim

RUN apt-get update -qq && \
  apt-get install -y build-essential cmake curl git libxml2-dev libxslt1-dev pkg-config libpq-dev


# Node.js
RUN curl -sL https://deb.nodesource.com/setup_12.x | bash - \
    && apt-get install -y nodejs


RUN curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | apt-key add -
RUN echo "deb https://dl.yarnpkg.com/debian/ stable main" | tee /etc/apt/sources.list.d/yarn.list

RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*


RUN mkdir /app
WORKDIR /app

#RUN gem install 'bundler'
#RUN bundle install

CMD /bin/sh 
# CMD ["./bin/rails", "server"]
