require 'simplecov'
SimpleCov.start

ENV['RAILS_ENV'] ||= 'test'
require File.expand_path('../dummy/config/environment.rb',  __FILE__)

require 'rspec/rails'
require 'factory_girl_rails'
require 'database_cleaner'
require 'mongoid-rspec'
require 'capybara/rspec'
require 'rspec/collection_matchers'
require 'dotenv'
Dotenv.load

ENGINE_RAILS_ROOT = File.join(File.dirname(__FILE__), '../')
Dir[File.join(ENGINE_RAILS_ROOT, 'spec/support/**/*.rb')].each { |f| require f }

RSpec.configure do |config|
  config.include HelenaAdministration::Engine.routes.url_helpers

  config.include ActionView::RecordIdentifier, type: :feature

  config.include Mongoid::Matchers, type: :model

  # We don't want write FactoryGirl all the time
  config.include FactoryGirl::Syntax::Methods

  config.infer_spec_type_from_file_location!

  config.order = :random
  config.profile_examples = 30

  DatabaseCleaner.strategy = :truncation

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end
end
