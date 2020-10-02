module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end
  
  # 現在ログイン中のユーザーを返す（いる場合）
  def current_user
    if session[:user_id]
      # User.find_by(id: session[:user_id])
      if @current_user.nil?
        @current_user = User.find_by(id: session[:user_id]) 
        return @current_user
      else
        return @current_user
      end
    end
  end
  
  # ユーザーがログインしていればtrue、その他ならfalseを返す
  def logged_in?
    !current_user.nil?
    #current_userがnilではないから、ログインしている（! は反転の意味）
  end
  
  #現在のユーザーをログアウトする
  def log_out
    session.delete(:user_id)
    @current_user= nil
  end
end
