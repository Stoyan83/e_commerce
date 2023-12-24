source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

# Core
ruby '3.1.2'
gem 'jbuilder'
gem 'mysql2', '~> 0.5.3'
gem 'rails', '~> 7.0.8'

# Cache
gem 'redis', '~> 4.0'

# Boot
gem 'bootsnap', require: false

# JS Gems
gem 'jsbundling-rails'
gem 'stimulus-rails'
gem 'turbo-rails'

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]

# Env variables
gem 'dotenv-rails', '~> 2.1', '>= 2.1.1'

group :development do
  gem 'debug', platforms: %i[mri mingw x64_mingw]
end

group :test do
  gem 'factory_bot_rails', '~> 6.2'
  gem 'rspec-rails', '~> 6.0', '>= 6.0.3'
  gem 'rubocop-rails', require: false
  gem 'rubocop-rspec', require: false
  gem 'shoulda-matchers', '~> 5.3'
  gem 'simplecov', require: false
end

group :development do
  gem 'web-console'
  gem 'byebug', '~> 11.1', '>= 11.1.3'
end

group :test, :development do
  gem 'sprockets-rails'
  gem 'puma', '~> 5.0'
  gem 'faker', '~> 3.2', '>= 3.2.2'
end
