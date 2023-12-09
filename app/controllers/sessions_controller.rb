# frozen_string_literal: true

class SessionsController < ApplicationController
  def new
  end

  def create(session)
    user = User.find_by(email: session[:email].downcase)
    if user&.authenticate(session[:password])
      log_in user
      redirect_to root_path, flash: {success: t('logged_in')}
    else
      redirect_to new_session_path, flash: {danger: t('login_failed')}
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = t('logged_out')
    redirect_to root_url
  end
end
