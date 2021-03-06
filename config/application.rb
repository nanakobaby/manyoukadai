require_relative 'boot'

require 'rails/all'
Bundler.require(*Rails.groups)

module Manyoukadai
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.2
    I18n.enforce_available_locales = false
    config.time_zone = 'Tokyo'
    config.generators do |g|
      g.test_framework :rspec,
                       model_specs: true,
                       view_specs: false,
                       helper_specs: false,
                       controller_specs: false,
                       routing_specs: false,
                       request_specs: false
      g.assets false
      g.helper false
      g.jbuilder false
    end
    # Settings in config/environments/* take precedence over those specified here.
    # Application configuration can go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded after loading
    # the framework and any gems in your application.
    config.time_zone = 'Tokyo'
    config.active_record.default_timezone = :local
  end
end
