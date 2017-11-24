module KonoMailup
  class Engine < ::Rails::Engine
    isolate_namespace KonoMailup


    require 'mailup'
    require 'omniauth-mailup'
    require 'rails-settings-cached'

    config.eager_load_namespaces << KonoMailup

    # config.autoload_paths << File.expand_path("../../lib/**/*.rb", __FILE__)

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

    initializer 'kono_mailup.add_omniauthmiddleware' do |app|
      app.config.middleware.use OmniAuth::Builder do
        provider :mailup,
                 KonoMailup.mailup_client_id,
                 KonoMailup.mailup_client_secret
      end
    end

    initializer 'kono_mailup.add_locales' do |app|
      I18n.load_path += Dir[::KonoMailup::Engine.root.join('config', 'locales', '**', '*.{rb,yml}')]
    end


  end
end
