FROM ruby:2.3.0-onbuild

ENV RAILS_ENV=production

RUN apt-get update # 2016-01-14 
RUN apt-g