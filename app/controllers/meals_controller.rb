class MealsController < ApplicationController
  def index
  end

  def new
    @meal = Meal.new
  end

  def create
    if Meal.create(meal_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def meal_params
    params.require(:meal).permit(:menu, :wheat_id, :calory).merge(user_id: current_user.id)
  end
end
