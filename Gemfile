source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end

gem 'bootstrap-sass', '~> 3.3.6'
gem 'decent_exposure', '3.0.0'
gem 'jbuilder', '~> 2.5'
gem 'pg', '~> 0.20'
gem 'puma', '~> 3.7'
gem 'rails', '~> 5.1.1'
gem 'redis', '~>3.2'
gem 'redis-namespace'
gem 'haml-rails'
gem 'rufus-scheduler'
gem 'sass-rails', '>= 3.2'
gem 'sidekiq'
gem 'turbolinks', '~> 5'
gem 'uglifier', '>= 1.3.0'

group :development, :test do
  gem 'brakeman', require: false
  gem 'factory_girl_rails'
  gem 'faker'
  gem 'pry-inline'
  gem 'pry-rails'
  gem 'pry-rescue'
  gem 'rubocop'
  gem 'rspec-rails', '~> 3.5'
end

group :development do
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
  gem 'web-console', '>= 3.3.0'
end

group :test do
  gem 'capybara'
  gem 'database_cleaner'
  gem 'mock_redis'
  gem 'selenium-webdriver'
  gem 'shoulda-matchers', '~> 3.1'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
