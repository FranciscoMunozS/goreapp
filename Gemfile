source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.1.4'
gem 'pg', '~> 0.18'
gem 'puma', '~> 3.7'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'
gem 'jbuilder', '~> 2.5'
gem 'haml', '~> 5.0', '>= 5.0.4'
gem 'simple_form', '~> 3.5'
gem 'devise', '~> 4.3'
gem 'semantic-ui-sass', '~> 2.2', '>= 2.2.12.0'
gem 'enumerize', '~> 2.1', '>= 2.1.2'
gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'searchkick', '~> 2.3', '>= 2.3.2'
gem 'rubyzip', '>= 1.2.1'
gem 'auto_increment', '~> 1.4', '>= 1.4.1'
gem 'axlsx', git: 'https://github.com/randym/axlsx.git', ref: '776037c0fc799bb09da8c9ea47980bd3bf296874'
gem 'axlsx_rails'
gem 'seed_dump'
gem 'will_paginate_semantic_ui'
gem 'paperclip', '~> 5.1'


group :development, :test do
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
