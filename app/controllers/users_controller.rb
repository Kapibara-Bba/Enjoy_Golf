class UsersController < ApplicationController

  def show
    @user = User.find(params[:id])
    @user_record = @user.records
    @record = Record
    # @user_average_score = User.joins(:records).average(:score).round(1)
    # @user_average_putt = User.joins(:records).average(:putt).round(1)
    # @user_record = column_chart User.joins(:records).group(:score).count
  end
  

end
