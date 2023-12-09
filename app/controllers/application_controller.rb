# frozen_string_literal: true

class ApplicationController < ActionController::Base
  include SessionsHelper

  protected

    def require_login
      return if logged_in?

      redirect_to new_session_path, flash: {danger: t('require_login')}
    end
end
