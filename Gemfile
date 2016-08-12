source "https://rubygems.org"

# Specify your gem's dependencies in rodakase.gemspec
gemspec

gem 'dry-system', github: 'dry-rb/dry-system', branch: 'master'
gem 'dry-web', github: 'dry-rb/dry-web', branch: 'master'

group :test do
  gem 'byebug', platform: :mri
  gem 'rack', '>= 1.0.0', '<= 2.0.0'
  gem 'rack-test'
  gem 'dry-monads'
  gem 'dry-transaction'
  gem 'dry-view'
  gem 'slim'

  gem 'codeclimate-test-reporter', platform: :rbx
end

group :tools do
  gem 'pry'
end
