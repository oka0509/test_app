class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user&.authenticate(params[:session][:password])
      log_in user
      flash[:success] = t('logged_in')
      redirect_to root_path
    else
      flash[:danger] = t('login_failed')
      redirect_to new_session_path
    end
  end

  def destroy
    log_out if logged_in?
    flash[:success] = t('logged_out')
    redirect_to root_url
  end
end
