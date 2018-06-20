class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.valid?
      @user.save
      redirect_to user_path(@user)
    else
      redirect_to new_user_path
    end
  end



  private
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

end
