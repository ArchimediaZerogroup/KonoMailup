module KonoMailup
  module Generators
    class InstallGenerator < Rails::Generators::Base
      source_root File.expand_path('../templates', __FILE__)

      desc "Creates Initializers"
      def copy_initializer

        template "initializers.rb", "config/initializers/kono_mailup.rb"

      end


    end
  end
end
