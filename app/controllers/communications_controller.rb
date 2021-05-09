class CommunicationsController < ApplicationController
  def index
    @communication = Communication.new
  end

  def create
    if Communication.create(communication_params)
      redirect_to root_path
    else
      render :index
    end
  end

  private
  def communication_params
    params.require(:communication).permit(:time).merge(user_id: current_user.id)
  end
end
