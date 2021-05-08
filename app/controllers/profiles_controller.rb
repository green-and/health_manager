class ProfilesController < ApplicationController
  def index
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
