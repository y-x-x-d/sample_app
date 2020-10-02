class SessionsController < ApplicationController
  #GET /login
  def new
    # X @session = Session.new
    # O scope: :session + url: login_path 中身は特に書かない
  end
  
  # POST /login
  def create
    @user = User.find_by(email: params[:session][:email].downcase)
    if !@user.nil? && @user.authenticate(params[:session][:password])
      # && 両方とも成功したときの処理
      #成功
      log_in @user
      redirect_to @user
    else
      #失敗
      #[:danger] = 赤色のフラッシュになる
      flash.now[:danger] = 'Invalid email/password combination' 
      render 'new'
    end
  end
  
  def destroy
    log_out
    redirect_to root_url
  end
end
