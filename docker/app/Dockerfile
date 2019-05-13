FROM ruby:2.4.4
#安装依赖
# Install dependencies
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs postgresql-client
#设置docker镜像中项目路径
# Set an environment variable where the Rails app is installed to inside of Docker image:
ENV RAILS_ROOT /var/www/app_name
RUN mkdir -p $RAILS_ROOT

#设置工作路径
# Set working directory, where the commands will be ran:
WORKDIR $RAILS_ROOT

#设置生产环境
# Setting env up
ENV RAILS_ENV='production'
ENV RACK_ENV='production'

# Adding gems
COPY Gemfile Gemfile
COPY Gemfile.lock Gemfile.lock
RUN bundle install
# RUN rails assets:precompile
# RUN rails db:migrate

#Adding prodject file
COPY . .

EXPOSE 3000
CMD ["bundle","exec","puma","-C","config/puma.rb"]