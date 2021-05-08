class ProfilesController < ApplicationController
  def index
  end

  def new
    @profile = Profile.new
  end

  def create
    Profile.create(profile_params)
  end

  private
  def profile_params
    params.require(:profile).permit(:age, :height, :weight).merge(user_id: current_user.id)
  end
end
