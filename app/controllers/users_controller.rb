class UsersController < ApplicationController

  def index
    @users = User.all
  end

  def new
    @user = User.new
  end

  def create(user)
    @user = User.new(user.permit(:email, :name, :password, :password_confirmation))
    if @user.valid?
      @user.save!
      log_in @user
      flash[:success] = t('logged_in')
      redirect_to root_path
    else
      flash.now[:danger] = t('user_create_failed')
      render :new, status: :unprocessable_entity
    end
  end
end
