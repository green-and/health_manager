class ProfilesController < ApplicationController
  def index
    @profile = Profile.where(id: current_user.id).last
    @meals = current_user.meals.order(day_on: "DESC")
    @digitals = current_user.digitals.order(day_on: "DESC")
    @communications = current_user.communications.order(day_on: "DESC")
  end

  def new
    @profile = Profile.new
  end

  def create
    if Profile.create(profile_params)
      redirect_to root_path
    else
      render :new
    end
  end

  private
  def profile_params
    params.require(:profile).permit(:age, :height, :weight, :wheatgoal_id, :calory_goal, :digital_goal, :communication_goal).merge(user_id: current_user.id)
  end
end
