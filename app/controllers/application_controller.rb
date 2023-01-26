class ApplicationController < ActionController::Base
  include SessionsHelper
  before_action :login_required

  private

  def login_required
    redirect_to new_session_path unless current_user
  end

  def logged_in_user
    unless logged_in?
      redirect_to login_url
    end
  end

  private

  def login_required
    redirect_to login_url unless current_user
  end
end
