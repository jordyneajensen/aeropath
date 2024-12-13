# frozen_string_literal: true

source 'https://rubygems.org'

gem 'rails', '~> 8.0.1'
gem 'sprockets-rails'
gem 'pg', '~> 1.1'
gem 'puma', '>= 5.0'
gem 'importmap-rails'
gem 'turbo-rails'
gem 'stimulus-rails'
gem 'tailwindcss-rails'
gem 'jbuilder'
gem 'tzinfo-data', platforms: %i[windows jruby]
gem 'bootsnap', require: false
gem 'devise'

group :development, :test do
  gem 'debug', platforms: %i[mri windows], require: 'debug/prelude'
  gem 'brakeman', require: false
  gem 'factory_bot_rails'
  gem 'rspec-rails'
  gem 'faker'             # Add this for generating test data
  gem 'shoulda-matchers' # Add this for better testing matchers
end

group :development do
  gem 'web-console'
  gem 'rubocop', require: false
  gem 'rubocop-rails', require: false
  gem 'rubocop-rails-omakase', require: false
end

group :test do
  gem 'capybara'
  gem 'database_cleaner-active_record' # Add this for cleaning test database
end