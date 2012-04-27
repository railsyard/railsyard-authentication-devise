require File.expand_path('../boot', __FILE__)

# Pick the frameworks you want:
require "active_record/railtie"
require "action_controller/railtie"
require "action_mailer/railtie"
require "active_resource/railtie"
require "sprockets/railtie"
# require "rails/test_unit/railtie"

Bundler.require
require "railsyard-backend"
require "railsyard-authentication-devise"

module Dummy
  class Application < Rails::Application
    Railsyard::Backend.authentication_adapter = Railsyard::Backend::Authentication::Devise
    Railsyard::Backend.authenticator_initializer = lambda { |authenticator| authenticator.scope = :user }

    config.encoding = "utf-8"
    config.filter_parameters += [:password]
    config.active_record.whitelist_attributes = true
    config.assets.enabled = true
    config.assets.version = '1.0'
  end
end
