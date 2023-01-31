class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :login_required
  before_action :flash_alert, unless: :user_signed_in?

  private

  def login_required
    redirect_to new_session_path unless current_user
  end

  def logged_in_user
    unless logged_in?
      redirect_to login_url
    end
  end

  def flash_alert
    flash[:alert] = "ログインしてください" unless user_signed_in?
  end
end
