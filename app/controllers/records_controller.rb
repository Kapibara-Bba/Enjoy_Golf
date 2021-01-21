class RecordsController < ApplicationController

  def create
    @record = Record.new(record_params)
    @record.user_id = current_user.id
    @user_record = current_user.records
    if @record.save
      redirect_to user_path(current_user)
      flash[:notice] = "記録の作成に成功しました"
    else
      render 'users#show'
    end
  end

  private
  def record_params
    params.require(:record).permit(:score, :putt)
  end
end
