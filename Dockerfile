# .ruby-viersionと合わせる
FROM ruby:3.2.2

# パッケージ取得(-qqでエラーメッセージのみ表示)
RUN apt-get update -qq && apt-get install -y \
  build-essential \
  libpq-dev \
  nodejs \
  postgresql-client

# 作業フォルダを指定
WORKDIR /rails-docker
# moduleをインストール
COPY Gemfile Gemfile.lock /rails-docker/
RUN bundle install