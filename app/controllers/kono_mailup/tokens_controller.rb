module KonoMailup
  class TokensController < ApplicationController

    def create

      API.save_tokens(token: request.env['omniauth.auth'][:credentials][:token],
                      refresh_token: request.env['omniauth.auth'][:credentials][:refresh_token],
                      expires_at: request.env['omniauth.auth'][:credentials][:expires_at])

      redirect_to root_path, notice: 'Successfully token configuration'

    end

  end
end