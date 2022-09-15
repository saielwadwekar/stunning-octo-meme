class UserDetailsController < ApplicationController

  def create
    @user = UserDetail.new(user_d_params)
    if @user.save 
      redirect_to @user
    else
      redirect_to new_user_detail
    end
  end

  def index
 
  end

  def log_in
  end

  def new
    @user = UserDetail.new
  end

  def sign_in
    if UserDetail.find_by(user_name: params[:user_name]) && UserDetail.find_by(password: params[:password])
      redirect_to tweets_path
    else
      redirect_to root_path
    end
  end

  def show
    @user = UserDetail.find(params[:id])
  end

  

  private

  def user_d_params
    params.require(:user_detail).permit(:first_name, :last_name, :user_name, :passsword)
  end
end
