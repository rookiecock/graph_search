require File.expand_path('../boot', __FILE__)

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(:default, Rails.env)

module Stockwatcher
  class Application < Rails::Application
    # Settings in config/environments/* take precedence over those specified here.
    # Appl