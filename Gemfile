# frozen_string_literal: true

source 'https://rubygems.org'
git_source(:github) { |repo| "https://github.com/#{repo}.git" }

ruby '3.1.2'

gem 'bootsnap', require: false
gem 'dry-monads'
gem 'dry-struct'
gem 'faraday'
gem 'importmap-rails'
gem 'jbuilder'
gem 'pg', '~> 1.1'
gem 'puma', '~> 5.0'
gem 'rails', '~> 7.0.8'
gem 'sprockets-rails'
gem 'stimulus-rails'

group :development, :test do
  gem 'pry'
  gem 'rspec-rails', '~> 6.0.0'
  gem 'rubocop-rails'
end

group :test do
  gem 'rails-controller-testing'
  gem 'rubocop-rspec'
end
