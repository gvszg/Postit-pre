class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      session[:user_id] = @user.id # automatically log in after registration
      flash[:notice] = 'You were registered!'
      redirect_to root_path
    else
      render :new
    end
  end


  private

  def user_params
    params.require(:user).permit(:username, :password)
  end
end