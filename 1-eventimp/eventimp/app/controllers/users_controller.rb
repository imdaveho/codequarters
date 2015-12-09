class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    # debugger
  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Welcome to EventImp!"
      redirect_to user_show_path(@user.id)
    else
      render 'new'
    end
  end

  def destroy
    User.find(params[:id]).destroy
    redirect_to root_path
  end

  def custom

  end

  private

    def user_params
      params.require(:user).permit(:name, :email, :password,
                                   :password_confirmation)
    end

end
