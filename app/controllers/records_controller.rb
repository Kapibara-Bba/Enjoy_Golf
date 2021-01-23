class RecordsController < ApplicationController

  def new
    @record = Record.new(record_params)
  end

  def show
    @record = Record.find(params[:id])
  end

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

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to user_path(current_user)
  end

  private
  def record_params
    params.require(:record).permit(:score, :putt, :days, :member, :course)
  end
end
