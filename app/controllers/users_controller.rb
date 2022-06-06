class UsersController < ApplicationController

  def create
    # get token
    auth_hash = request.env['omniauth.auth']
    user = User.find_or_create_by(email: auth_hash[:info][:email])
    session[:access_token] = auth_hash[:credentials][:token]
    redirect_to '/'
  end

end
