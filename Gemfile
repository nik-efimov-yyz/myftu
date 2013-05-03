source 'https://rubygems.org'
source "http://gems.github.com"

gem 'rails'
gem "rvm-capistrano"#, "1.2.7"
gem "cancan"#, "1.6.8"
gem "sqlite3-ruby"#, "1.3.3"
gem "mysql2"#, "0.3.11"
gem "devise"#, "2.1.2"
gem "paperclip"#, "3.3.1"
gem "will_paginate"#, "3.0.3"
gem "friendly_id"#, "4.0.8"
gem "has_scope"#, "0.5.1"
gem "haml"#, "3.1.7"
gem 'chronic'#, "0.6.7"
gem "client_side_validations"#, "3.2.1"
gem 'geocoder'#, "1.1.4" # Geocodes Ads, Companies, etc
gem "countries"#, "0.8.3"
gem "ruby-units"#, "1.4.2" # Used for unit conversions
gem 'aws-sdk'#, "1.6.9"
gem "rest-client"#, "1.6.7"
gem "geoip"#, "1.2.0"
gem "mailgun-rails"#, "0.1.1"
gem "gmaps4rails"#, "1.5.6"
gem "whenever"#, "0.7.3", :require => false
gem "daemons"#, "1.1.9"
gem "delayed_job_active_record"#, "0.3.3"
gem "delayed_job_web"#, "1.1.2"
gem "delayed_task"#, "0.2.0"
gem "browser", "0.1.5"

# SUNSPOT / SOLR
gem 'sunspot', :git => "git://github.com/sunspot/sunspot.git"
gem 'sunspot_rails', :git => "git://github.com/sunspot/sunspot.git"
gem 'sunspot_cell', :git => 'git://github.com/zheileman/sunspot_cell.git'
gem "sunspot_autocomplete", ">= 0.0.3", :git => "git@github.com:xponrails/sunspot_autocomplete.git"

gem "timezone"#, "0.1.5" # Required for Timezone Calculation and Time Conversion
gem "spreadsheet"#, "0.7.4"
gem "flash_cookie_session"#, "1.1.3" # Required for Uploadify
gem "yaml_db"#, "0.2.3"

gem 'jquery-rails'#, "2.1.3"
gem "railties"#, "3.2.8"
gem "nokogiri"
gem "best_in_place" # for Edit-In-Place

group :development do

  gem "guard-livereload"
  gem 'guard-delayed'
  gem "nifty-generators"
  gem "hirb"
  gem "guard"
  gem "brakeman"
end

group :development, :test do
  gem "better_errors"
  gem "binding_of_caller"
  gem "meta_request"

  gem "ruby-prof"
  gem "test-unit"
  gem "spork"
  gem "guard-spork"
  gem "timecop"
  gem "fakeweb"
  gem "capybara"
  gem "database_cleaner"
  gem "factory_girl_rails", :git => "git://github.com/thoughtbot/factory_girl_rails.git"
  gem 'launchy'
  gem 'rmagick'
end

group :test do
  gem "shoulda-matchers"
  gem "rspec-rails"
  gem "faker"
  gem "populator"
end


# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem "jquery-fileupload-rails"

  # See https://github.com/sstephenson/execjs#readme for more supported runtimes
  # gem 'therubyracer'

  gem 'uglifier', '>= 1.0.3'
end



