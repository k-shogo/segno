require 'simplecov'
SimpleCov.start do
  add_filter 'spec'
  add_filter 'vendor'
end

require 'segno'
require 'rspec'

RSpec.configure do |config|
  config.mock_framework = :rspec
end

