class GoalsController < ApplicationController
  def index
    @goal = Goal.new
  end

  def create
    if Goal.create(goal_params)
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def goal_params
    params.require(:goal).permit(:wheatgoal_id, :calory_goal, :digital_goal, :communication_goal).merge(user_id: current_user.id)
  end
end
