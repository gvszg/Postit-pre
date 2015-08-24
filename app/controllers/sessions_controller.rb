class SessionsController < ApplicationController
  def new
  end

  def create
    # no session model
    user = User.where(username: params[:username]).first # equivalent: user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:notice] = "Welcome, #{user.username} has been logged in!"
      redirect_to root_path     
    else
      flash[:error] = 'There is something wrong with your username or pasword!'
      redirect_to login_path
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:notice] = "You've logged out!"
    redirect_to root_path
  end
end