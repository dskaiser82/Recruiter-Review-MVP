class SessionsController < ApplicationController
  def new
  end

  def create
  @user = User.find_by({email: params[:email]})
  if @user && @user.authenticate(params[:password])
    session[:user_id] = @user.id
    flash[:success] = "Welcome! Thanks for Logging-in!"
    redirect_to agencies_path
  else
    flash[:failure] = "Oops. Something went wrong. Try again."
    redirect_to new_session_path
  end
end

def destroy
  session[:user_id] = nil
  redirect_to agencies_path
  end
end
