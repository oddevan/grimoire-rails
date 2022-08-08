FROM ruby:3.1
ENV RAILS_ENV=production
RUN apt-get update \
	&& apt-get install -y --no-install-recommends \
	nodejs libmariadb-dev-compat libmariadb-dev \
	&& rm -rf /var/lib/apt/lists/*

WORKDIR /usr/src/app
COPY Gemfile* ./
RUN bundle install
COPY . .

EXPOSE 3000
CMD "rails server"