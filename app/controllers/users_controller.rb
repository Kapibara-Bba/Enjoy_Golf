class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_record = @user.records
    @record = Record.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if @user.update(user_params)
      redirect_to user_path(@user)
      flash[:notice] = "プロフィールの変更に成功しました"
    else
      render 'edit'
    end
  end

  private
  def user_params
    params.require(:user).permit(:name, :image)
  end
end
