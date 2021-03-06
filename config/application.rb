# frozen_string_literal: true

require_relative 'boot'
require_relative 'initializers/friend_graph.rb'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module Acebook
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 5.1
    config.i18n.fallbacks = [I18n.default_locale]
    config.time_zone = 'London'
    config.active_record.default_timezone = :local
    # Settings in config/environments/* take precedence over those specified here.
    # config.after_initialize do
    #   FriendGraph.generate_json
    # end
    # Application configuration should go into files in config/initializers
    # -- all .rb files in that directory are automatically loaded.
  end
end
