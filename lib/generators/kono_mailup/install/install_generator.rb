module KonoMailup
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      class_option :disable_routes, type: :boolean, default: false

      desc "Creates Initializers"

      def copy_initializer

        template "initializers.rb", "config/initializers/kono_mailup.rb"

        unless options['disable_routes']
          route "get '/auth/mailup/callback', to: 'kono_mailup/tokens#create'"
          route 'mount KonoMailup::Engine => "/kono_mailup"'
        end

      end


    end
  end
end
