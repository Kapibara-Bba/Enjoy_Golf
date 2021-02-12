class RecordsController < ApplicationController

  def new
    @record = Record.new()
  end

  def show
    @record = Record.find(params[:id])
  end

  def edit
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

  def update
    @record = Record.find(params[:id])
    @record.user_id = current_user.id
    @user_record = current_user.records
    if @record.update(record_params)
      redirect_to user_path(current_user)
      flash[:notice] = "記録の変更に成功しました"
    else
      render 'edit'
    end
  end

  def destroy
    @record = Record.find(params[:id])
    @record.destroy
    redirect_to user_path(current_user)
  end

  private
  def record_params
    params.require(:record).permit(:score, :putt, :days, :member, :course, :hole1, :hole2, :hole3, :hole4, :hole5, :hole6, :hole7,
                  :hole8, :hole9, :hole10, :hole11, :hole12, :hole13, :hole14, :hole15, :hole16, :hole17, :hole18, :hole1_putt,
                  :hole2_putt, :hole3_putt, :hole4_putt, :hole5_putt, :hole6_putt, :hole7_putt, :hole8_putt, :hole9_putt, :hole10_putt,
                  :hole11_putt, :hole12_putt, :hole13_putt, :hole14_putt, :hole15_putt, :hole16_putt, :hole17_putt, :hole18_putt,
                  :memo, :prefecture_code)
  end
end
