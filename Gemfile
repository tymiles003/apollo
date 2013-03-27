source 'https://rubygems.org'
ruby "1.9.2"
gem 'rails', '3.2.12'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer', :platforms => :ruby

  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails'

# To use ActiveModel has_secure_password
# gem 'bcrypt-ruby', '~> 3.0.0'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Deploy with Capistrano
# gem 'capistrano'

# To use debugger
# gem 'debugger'

gem 'haml-rails'
gem 'feedzirra'
gem 'htmlentities'
gem 'sorcery'
gem 'will_paginate', '~> 3.0'
gem 'activerecord-postgresql-adapter'
gem 'pg'
gem 'delayed_job_active_record'
gem 'daemons'

group :production do
	gem 'unicorn'
end

group :development do
  gem 'meta_request' 
  gem 'better_errors'
  gem 'binding_of_caller'
end
