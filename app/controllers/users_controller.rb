class UsersController < ApplicationController
  def create
    auth_hash = request.env["omniauth.auth"]
    password = "google_auth_placeholder"
    user = User.find_or_create_by(email: auth_hash[:info][:email], password: password)
    session[:access_token] = auth_hash[:credentials][:token]
    redirect_to "/"
  end

  def login_form
  end

  def login
    user = User.find_or_create_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to "/dashboard"
    else
      message = user.errors.full_messages.to_sentence
      redirect_to "/users/login"
      flash[:alert] = "Error: #{message}"
    end
  end

  def signup
    @user = User.new
  end

  def save
    user = User.find_or_create_by(user_params)
    session[:user_id] = user.id
    if user.save
      redirect_to "/dashboard"
    else
      message = user.errors.full_messages.to_sentence
      redirect_to "/users/signup"
      flash[:alert] = "Error: #{message}"
    end
  end

  def show
    @user_id = session[:user_id]
    @user = User.find(@user_id)
    @email = @user.email

    connection = Faraday.new(url: "https://desolate-caverns-04440.herokuapp.com/api/v1/")
    response = connection.get("users/#{@user_id}/shelters")
    @shelters = JSON.parse(response.body, symbolize_names: true)
  end

  def destroy
    session.destroy
    redirect_to "/"
  end

  private

  def user_params
    params.permit(:email, :password)
  end
end
