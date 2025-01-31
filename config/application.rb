require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module StripePayment
  class Application < Rails::Application
    config_file = Rails.application.config_for(:application)
    config_file.each do |key,value|
    ENV[key] = value
  end unless config_file.nil?
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
