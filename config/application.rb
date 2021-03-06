require_relative 'boot'

require "rails"
# Pick the frameworks you want:
require "active_model/railtie"
require "active_job/railtie"
require "active_record/railtie"
require "action_controller/railtie"
require "action_view/railtie"
require "sprockets/railtie"
require "rails/test_unit/railtie"
require_relative "../lib/cardworld/middleware/my_middleware.rb"

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Cardworld
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1

    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
    config.active_record.sqlite3.represent_boolean_as_integer = true

    # Session
    config.session_store :active_record_store

    # For debugging
    config.middleware.delete "WebConsole::Middleware"
    config.middleware.delete "ActionDispatch::DebugExceptions"
    config.middleware.insert_before ActionDispatch::Session::ActiveRecordStore, Cardworld::Middleware::MyMiddleware
    config.middleware.insert_after ActionDispatch::Session::ActiveRecordStore, Cardworld::Middleware::MyMiddleware
    config.middleware.insert_after ActionDispatch::Flash, Cardworld::Middleware::MyMiddleware
    config.middleware.insert_after Rack::TempfileReaper, Cardworld::Middleware::MyMiddleware
  end

  ActiveRecord::SessionStore::Session.serializer = :json
end
