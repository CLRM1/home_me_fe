class UsersController < ApplicationController

  def create
    # get token
    auth_hash = request.env['omniauth.auth']
    user = User.find_or_create_by(email: auth_hash[:info][:email])
    session[:access_token] = auth_hash[:credentials][:token]
    redirect_to '/'
  end

  def signup
    @user = User.new
  end

  def save
    # user = user_params
    # user[:email] = user[:email].downcase
    # new_user = User.create(user)
    user = User.find_or_create_by(email: params[:email])
    redirect_to '/dashboard'
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
