module KonoMailup
  class TokensController < ApplicationController

    def create

      KonoMpCfg.token=request.env['omniauth.auth'][:credentials][:token]
      KonoMpCfg.refresh_token=request.env['omniauth.auth'][:credentials][:refresh_token]
      KonoMpCfg.expires_at=request.env['omniauth.auth'][:credentials][:expires_at]
      KonoMpCfg.expires=request.env['omniauth.auth'][:credentials][:expires]

      redirect_to root_path, notice: 'Successfully token configuration'

    end

  end
end