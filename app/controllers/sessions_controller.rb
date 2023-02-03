class SessionsController < ApplicationController
  skip_before_action :login_required, only: [:new, :create]
  before_action :already_login?, except: :destroy
  def new
  end
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to tasks_path, notice: "ログインしました"
    else
      flash.now[:alert] = "メールアドレスまたはパスワードに誤りがあります"
      render :new
    end
  end
  def destroy
    session[:user_id] = nil
    redirect_to root_path, notice: "ログアウトしました"
  end
end
