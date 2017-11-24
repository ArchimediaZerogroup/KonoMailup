module KonoMailup
  ##
  # Classe che si occupa restituire il client di mailup configurato
  #
  class ApiBuilder


    def self.client_ready?
      #TODO completare
      true
    end

    def self.client
      MailUp::API.new({
                        client_id: KonoMailup.mailup_client_id,
                        client_secret: KonoMailup.mailup_client_secret,
                        oauth: {
                          token: KonoMailup::Cfg.token,
                          refresh_token: KonoMailup::Cfg.refresh_token,
                          expires_at: KonoMailup::Cfg.expires_at
                        }
                      })
    end

  end
end