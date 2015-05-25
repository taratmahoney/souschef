class UsersController < ApplicationController
 skip_before_filter :require_login, only: [:index, :new, :create] 

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)

    if @user.save
      redirect_to recipes_url, notice: "You're in! Let's get started."
      auto_login(@user)
    else
      render "new", alert: "Something went wrong! Try again."
    end

  end

  def edit
    @user = User.find(params[:id])
  end
  def update
    
  end


  private
  def user_params
    params.require(:user).permit(:email, :password, :password_confirmation)
  end

end
