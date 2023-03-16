#! /bin/bash
git clone https://github.com/rbenv/rbenv.git ~/.rbenv
export PATH="$HOME/.rbenv/bin:$PATH"
eval "$(rbenv init -)"

git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"

rbenv install 3.2.1
rbenv global 3.2.1
ruby -v

gem update --system 3.4.7
gem install bundler jekyll
rbenv rehash
cd /workspaces/my_online_resume/clayton-resume
git config --global --add safe.directory /workspaces/my_online_resume/clayton-resume
bundle install
bundle exec jekyll serve --livereload --config _config.yml