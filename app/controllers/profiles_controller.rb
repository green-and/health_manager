class ProfilesController < ApplicationController
  def index
    @goal = Goal.where(id: current_user.id).last
    @meals = current_user.meals
    @digitals = current_user.digitals
    @communications = current_user.communications
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
    params.require(:profile).permit(:age, :height, :weight).merge(user_id: current_user.id)
  end
end
