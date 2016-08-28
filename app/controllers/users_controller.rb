class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.attributes = user_params

    if @user.save
      redirect_to login_path, notice: "注册成功，请登陆"
    else
      flash[:error] = "用户信息填写有误"
      render :new
    end
  end

  def edit
    @user = current_user
  end

  def update
    user = User.find params[:id]
    if user.update(avatar: params[:user][:avatar])
      redirect_to todos_path
    else
      render :edit
    end
  end

  private
  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end

end
