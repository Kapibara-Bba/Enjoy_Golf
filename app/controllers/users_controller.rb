class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_record = @user.records
    @record = Record.new
    # @user_average_score = User.joins(:records).average(:score).round(1)
    # @user_average_putt = User.joins(:records).average(:putt).round(1)
    # @user_record = column_chart User.joins(:records).group(:score).count
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
    params.require(:user).permit(:name)
  end
end
