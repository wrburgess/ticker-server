ENV["RAILS_ENV"] ||= "test"
require File.expand_path("../../config/environment", __FILE__)
require "capybara/rails"
require "capybara/rspec"
require "database_cleaner"
require "rspec/autorun"
require "rspec/rails"

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

ActiveRecord::Migration.check_pending! if defined?(ActiveRecord::Migration)

DatabaseCleaner.strategy = :truncation

RSpec.configure do |config|
  config.use_transactional_fixtures = false
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"

  config.before do
    DatabaseCleaner.start
    ActionMailer::Base.deliveries.clear
  end

  config.after do
    DatabaseCleaner.clean
  end

  config.treat_symbols_as_metadata_keys_with_true_values = true
end