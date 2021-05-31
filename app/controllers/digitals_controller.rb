class DigitalsController < ApplicationController
  def index
    @digital = Digital.new
    @goal = Goal.where(id: current_user.id).last
    @digitals = current_user.digitals
  end

  def create
    if Digital.create(digital_params)
      redirect_to root_path
    else
      render :index
    end
    binding.pry
  end

  private
  def digital_params
    params.require(:digital).permit(:time, :day_on).merge(user_id: current_user.id)
  end
end
