require "kono_mailup/engine"

module KonoMailup

  extend ActiveSupport::Autoload

  autoload :Engine
  autoload :API

  eager_autoload do

  end


  ##
  # MAILUP_CLIENT_ID
  mattr_accessor :mailup_client_id
  @@mailup_client_id = 'XXXXXXXXXX'

  ##
  # MAILUP_CLIENT_SECRET
  mattr_accessor :mailup_client_secret
  @@mailup_client_secret = 'XXXXXXXXXX'


  # Default way to setup KonoMailup. Run "rails generate kono_mailup_install" to create
  # a fresh initializer with all configuration values.
  def self.setup
    yield self
  end

end
