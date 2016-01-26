source 'https://rubygems.org'
source 'https://rails-assets.org' do
  gem 'rails-assets-jquery'
  gem 'rails-assets-jquery-ujs'
  gem 'rails-assets-jquery.transit', "~>0.9.9"
end

# Big Stuff
gem 'rails', '4.2.5'
gem 'pg'
gem 'clearance', '~> 1.12.1'
gem "administrate", github: 'thoughtbot/administrate'
gem "paperclip", "~> 4.3"
gem 'aws-sdk'

# HTML/CSS
gem "flutie"
gem 'swipebox'
gem 'ruby-bbcode'
gem 'high_voltage', '~> 2.4.0'
gem 'sass-rails', '~> 5.0'

# Javascript
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.1.0'

# JSON
gem 'jbuilder', '~> 2.0'

# Application Server
gem 'puma'
gem 'rails_12factor'

group :development, :test do
  gem "guard", ">= 2.2.2", :require => false
  gem "guard-minitest", :require => false
  gem 'better_errors'
  gem 'binding_of_caller'
  gem 'annotate', '~> 2.6.6'
end

group :test do
    gem "rb-fsevent", :require => false
    gem "minitest-reporters"
    gem 'minitest-rails-capybara'
    gem "poltergeist"
    gem "launchy"
end

group :development do
  gem 'web-console', '~> 2.0'
  gem 'spring'
  gem 'capistrano', '~> 3.1.0'
  gem 'capistrano-bundler', '~> 1.1.2'
  gem 'capistrano-rails', '~> 1.1.1'
  gem 'capistrano-rbenv', '~> 2.0'
end

