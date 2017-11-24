require 'multi_json'
module KonoMailup
  ##
  # Classe che si occupa restituire il client di mailup configurato
  #
  class API < DelegateClass(MailUp::API)

    attr_accessor :original_api

    def self.client_ready?
      #TODO could be made better?
      self.new
      true
    rescue Exception => e
      Rails.logger.warn { "MailupClient not responding, #{e.message}" }
      false
    end

    def initialize(debug: false)
      # build up file path/name in var tmpname...

      @original_api = MailUp::API.new({
                                        client_id: KonoMailup.mailup_client_id,
                                        client_secret: KonoMailup.mailup_client_secret,
                                        oauth: {
                                          token: KonoMailup::Cfg.token,
                                          refresh_token: KonoMailup::Cfg.refresh_token,
                                          expires_at: KonoMailup::Cfg.expires_at
                                        }
                                      }, debug)

      super(@original_api)

      refresh_access_token
    end


    def refresh_access_token
      if self.access_token
        if self.access_token.expired?
          self.access_token = self.access_token.refresh!

          API.save_tokens(token: self.access_token.token,
                          refresh_token: self.access_token.refresh_token,
                          expires_at: self.access_token.expires_at)
        end
      end
    end


    def self.save_tokens(token:, refresh_token:, expires_at:, expires: true)
      KonoMailup::Cfg.token=token
      KonoMailup::Cfg.refresh_token=refresh_token
      KonoMailup::Cfg.expires_at=expires_at
      KonoMailup::Cfg.expires=expires
    end


  end
end