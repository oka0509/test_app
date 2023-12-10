# frozen_string_literal: true

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
      redirect_to root_path, flash: {success: t('user_created'), info: t('logged_in')}
    else
      flash.now[:danger] = t('user_create_failed')
      render :new, status: :unprocessable_entity
    end
  end
end
