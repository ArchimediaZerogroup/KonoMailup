require "kono_mailup/engine"

module KonoMailup

  extend ActiveSupport::Autoload

  autoload :Engine

  eager_autoload do

  end


  # Default way to setup KonoMailup. Run "rails generate kono_mailup_install" to create
  # a fresh initializer with all configuration values.
  def self.setup
    yield self
  end

end
