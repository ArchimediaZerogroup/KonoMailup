module KonoMailup
# RailsSettings Model
  class Cfg < RailsSettings::Base
    source KonoMailup::Engine.root.join("config/app.yml")
    namespace Rails.env
  end
end
