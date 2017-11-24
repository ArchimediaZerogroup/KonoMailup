KonoMailup::Engine.routes.draw do


  resource :test_api, only: [:list] do
    get :list
  end

  root :to => 'main#index'

end

