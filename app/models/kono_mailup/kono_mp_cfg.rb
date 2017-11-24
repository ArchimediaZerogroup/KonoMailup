module KonoMailup
# RailsSettings Model
  class KonoMpCfg < RailsSettings::Base
    source KonoMailup::Engine.root.join("config/app.yml")
    namespace Rails.env
  end
end
