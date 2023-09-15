require_relative 'boot'

require 'rails/all'

# Require the gems listed in Gemfile, including any gems
# you've limited to :test, :development, or :production.
Bundler.require(*Rails.groups)

module TechlogApp
  class Application < Rails::Application
    # Initialize configuration defaults for originally generated Rails version.
    config.load_defaults 7.0

    config.generators do |g| # ここから追記
      g.assets false          # CSS, JavaScriptファイルを自動生成しない
      g.helper false      # helperファイルを自動生成しない
    end  # ここまで追記
  end
end
