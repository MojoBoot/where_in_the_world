class UsersController < ApplicationController
  def index
    @users = User.all
  end

  def show
    @user = get_user
  end

  def new
    @user = User.new
  end

  def create
    @user = User.create(user_params)
    if @user.save
      redirect_to user_path(@user)
    else
      render 'new'
    end
  end

  def edit
    @user = get_user
  end

  def destroy
    @user = get_user
    @user.destroy
    redirect_to users_path
  end

private

def user_params
params.require(:user).permit(:email, :password)
end


def get_user
User.find(params[:id])
end

end
