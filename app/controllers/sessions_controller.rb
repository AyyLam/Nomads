class SessionsController < ApplicationController
  skip_before_action :logged_in?, only: [:create, :new]

  def new
    # Login
    render :new
  end

  def create
    @curr_user = User.find_by(email: params[:email])
    # Does that user exist? && does it match the authorization
    if @curr_user && @curr_user.authenticate(params[:password])
      # byebug
      session[:user_id] = @curr_user.id

      redirect_to user_path(@curr_user)
    else
      redirect_to login_path
    end
    # POST of the login
  end

  def destroy
    # Logging out
    session.delete :user_id

    redirect_to login_path
  end

  private
  def user_params
    params.permit(:email, :password)
  end
end
