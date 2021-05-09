source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '2.6.3'

gem 'active_model_serializers', '~> 0.10.12'
gem 'bootsnap', '>= 1.1.0', require: false
gem 'devise_token_auth', '~> 1.1'
gem 'pg', '>= 0.18', '< 2.0'
gem 'puma', '~> 3.11'
gem 'rails', '~> 5.2.6'
gem 'rubocop-rails', '~> 2.10'

group :development, :test do
  gem 'awesome_print', '~> 1.9'
  gem 'byebug', platforms: %i[mri mingw x64_mingw]
  gem 'pry-rails', '~> 0.3.9'
end

group :development do
  gem 'letter_opener', '~> 1.7'
  gem 'listen', '>= 3.0.5', '< 3.2'
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: %i[mingw mswin x64_mingw jruby]
