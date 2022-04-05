require 'rails'
require "action_controller/railtie"

module App
  class Application < Rails::Application
    config.load_defaults 7.0
    config.eager_load = false
  end
end

Rails.application.initialize!
run Rails.application