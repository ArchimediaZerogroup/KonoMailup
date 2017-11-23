module KonoMailup
  class Engine < ::Rails::Engine
    isolate_namespace KonoMailup

    config.eager_load_namespaces << KonoMailup

    # config.autoload_paths << File.expand_path("../../lib/**/*.rb", __FILE__)

    config.generators do |g|
      g.test_framework :rspec
      g.fixture_replacement :factory_girl, :dir => 'spec/factories'
    end

    initializer 'kono_mailup.add_locales' do |app|
      I18n.load_path += Dir[::KonoMailup::Engine.root.join('config', 'locales', '**', '*.{rb,yml}')]
    end

    #inserito automatismo per cui vengono caricati anche questi file per migrazione
    initializer :append_migrations do |app|
      unless app.root.to_s.match root.to_s
        config.paths["db/migrate"].expanded.each do |expanded_path|
          app.config.paths["db/migrate"] << expanded_path
        end
      end
    end


  end
end
