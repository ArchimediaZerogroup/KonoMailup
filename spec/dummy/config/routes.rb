Rails.application.routes.draw do

  mount KonoMailup::Engine => "/kono_mailup"
end
