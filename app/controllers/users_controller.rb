class UsersController < ApplicationController
  # get /users/:id
  def show
    @user = User.find(params[:id])
    # debugger
  end

  #get /users/new
  def new
    @user = User.new
  end

  # POST /users + params
  def create
    # User.create(params[:user])
    # User.create(user_params)
    @user = User.new(user_params)
    if @user.save
      # 成功
      # GET "/users/#{@user.id}"
      flash[:success] = "Welcome to the Sample App!"
      redirect_to @user
      # => redirecto_to user_path(@user)
      # => redirecto_to user_path(@user.id)
      # => redirecto_to user_path(1) = /user/1
    else
      render 'new'
      # 失敗したため、new.htmlの登録フォームをもう一度出す必要があるため
    end
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password,
                                 :password_confirmation)
  end
end
