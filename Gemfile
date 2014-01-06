source 'https://rubygems.org'

gem 'rails', '3.2.3'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

gem 'jquery-rails', '2.0.1'
gem 'json'

gem 'get_back'

# START:therubyracer
gem 'therubyrhino'
# END:therubyracer

group :test do
  gem 'rspec-rails', '2.8.1'
end

# START:db_driver

group :production do
  # START:pg
  gem 'activerecord-jdbcpostgresql-adapter'
  # END:pg
end

group :development, :test do
  # START:sqlite
  gem 'activerecord-jdbcsqlite3-adapter'
  # END:sqlite
end
# END:db_driver
