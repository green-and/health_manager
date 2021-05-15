class DigitalsController < ApplicationController
  def index
    @digital = Digital.new
    @goals = Goal.where(id: current_user.id)
    @digitals = current_user.digitals
  end

  def create
    if Digital.create(digital_params)
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def digital_params
    params.require(:digital).permit(:time).merge(user_id: current_user.id)
  end
end
