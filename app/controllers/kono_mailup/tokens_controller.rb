class KonoMailup::TokensController < KonoMailup::ApplicationController

  def create

    KonoMailup::API.save_tokens(token: request.env['omniauth.auth'][:credentials][:token],
                                refresh_token: request.env['omniauth.auth'][:credentials][:refresh_token],
                                expires_at: request.env['omniauth.auth'][:credentials][:expires_at])

    action_after_create
  end


  private
  def action_after_create
    redirect_to root_path, notice: 'Successfully token configuration'
  end

end
