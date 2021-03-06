source 'https://rubygems.org'

git_source(:github) do |repo_name|
  repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
  "https://github.com/#{repo_name}.git"
end
ruby '2.3.3'
# Bundle edge Rails instead: gem 'rails', github: 'rails/rails'
gem 'rails', '~> 5.1.4'
# Use sqlite3 as the database for Active Record

# Use Puma as the app server
gem 'puma', '~> 3.7'
# Use SCSS for stylesheets
gem 'sass-rails', '~> 5.0'
# Use Uglifier as compressor for JavaScript assets
gem 'uglifier', '>= 1.3.0'
# See https://github.com/rails/execjs#readme for more supported runtimes
# gem 'therubyracer', platforms: :ruby
gem 'jquery-rails'
# Use CoffeeScript for .coffee assets and views
gem 'coffee-rails', '~> 4.2'
# Turbolinks makes navigating your web application faster. Read more: https://github.com/turbolinks/turbolinks
gem 'turbolinks', '~> 5'
# Build JSON APIs with ease. Read more: https://github.com/rails/jbuilder
gem 'jbuilder', '~> 2.5'
# Use Redis adapter to run Action Cable in production
# gem 'redis', '~> 3.0'
# Use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'
gem 'devise', '~> 4.4', '>= 4.4.1'
gem 'simple_form', '~> 3.5'
gem 'bootstrap-sass', '~> 3.3', '>= 3.3.7'
gem 'record_tag_helper', '~> 1.0'
gem 'ransack', '~> 1.8', '>= 1.8.7'
# Use Capistrano for deployment
# gem 'html-pipeline', '~> 2.7', '>= 2.7.1'
# gem 'gemoji', '~> 3.0'
# gem 'github-markdown', '~> 0.6.9'
# gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.3'
gem 'font-awesome-sass', '~> 5.0', '>= 5.0.6.2'
# gem 'coderay', '~> 1.1', '>= 1.1.2'
gem 'pygments.rb', '~> 1.2', '>= 1.2.1'
# gem 'commonmarker', '~> 0.17.7.1'
# gem 'sanitize', '~> 4.0', '>= 4.0.1'
gem 'redcarpet', '~> 3.4'
gem 'carrierwave', '~> 1.2', '>= 1.2.2'
# gem 'activeadmin', '~> 0.6.6'
gem 'activeadmin'
gem 'arctic_admin'
gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.4'
gem 'bootstrap-glyphicons', '~> 0.0.1'
# gem 'font-awesome-rails', '~> 4.7', '>= 4.7.0.3'
# gem 'capistrano-rails', group: :development

group :development, :test do
  # Call 'byebug' anywhere in the code to stop execution and get a debugger console
  gem 'sqlite3'
  gem 'byebug', platforms: [:mri, :mingw, :x64_mingw]
  # Adds support for Capybara system testing and selenium driver
  gem 'capybara', '~> 2.13'
  gem 'selenium-webdriver'
end

group :development do
  # Access an IRB console on exception pages or by using <%= console %> anywhere in the code.
  gem 'web-console', '>= 3.3.0'
  gem 'listen', '>= 3.0.5', '< 3.2'
  # Spring speeds up development by keeping your application running in the background. Read more: https://github.com/rails/spring
  gem 'spring'
  gem 'spring-watcher-listen', '~> 2.0.0'
end

group :production do 
gem 'pg', '~> 1.0'
gem 'rails_12factor', '~> 0.0.3'
end 

# Windows does not include zoneinfo files, so bundle the tzinfo-data gem
gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]
