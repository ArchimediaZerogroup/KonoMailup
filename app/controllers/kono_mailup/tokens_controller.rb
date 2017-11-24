module KonoMailup
  class TokensController < ApplicationController

    def create

      Cfg.token=request.env['omniauth.auth'][:credentials][:token]
      Cfg.refresh_token=request.env['omniauth.auth'][:credentials][:refresh_token]
      Cfg.expires_at=request.env['omniauth.auth'][:credentials][:expires_at]
      Cfg.expires=request.env['omniauth.auth'][:credentials][:expires]

      redirect_to root_path, notice: 'Successfully token configuration'

    end

  end
end