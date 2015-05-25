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
    @user = User.find(params[:id])
    if @user.update_attributes(user_params)
      redirect_to user_path(@user), notice: "Your profile was successfully updated!"
    else
      render :edit, notice: "Something went wrong ): Try again?"
    end
  end

  def show
    @user = User.find(params[:id])
  end


private
  def user_params
    params.require(:user).permit(:first_name, :last_name, :email, :avatar, :password, :password_confirmation)
  end

end
