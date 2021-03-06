class MissionsController < ApplicationController
  def index
    @mission = Mission.all
  end

  def show
    @mission = Mission.find(params[:id])
  end

  def new
     @mission = Mission.new
  end

  def edit
    @mission = Mission.find(params[:id])

  end

  def create
    @mission = Mission.new(mission_params)

    if @mission.save

    redirect_to @mission

    else render 'new'

    end
  end

  def update
    @mission = Mission.find(params[:id])

    if @mission.update(mission_params)
      redirect_to @mission
    else
      render 'edit'
    end
  end

  def destroy
    @mission = Mission.find(params[:id])
    @mission.destroy

    redirect_to missions_path
  end

private
  def mission_params
    params.require(:mission).permit(:title, :local, :challenge_label, :team, :creator, :comments, :price)
  end
end