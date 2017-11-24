Rails.application.routes.draw do

  mount KonoMailup::Engine => "/kono_mailup"
  get '/auth/mailup/callback', to: 'kono_mailup/tokens#create'

  root :to => redirect("/kono_mailup")


end
