class TeamCompsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @team_comp = TeamComp.new
  end

  def create
    @team_comp = TeamComp.new(team_comp_params)
    respond_to do |format|
      if @team_comp.save
        format.html { redirect_to team_comp_url(@team_comp), notice: "Team was successfully created." }
        format.json { render :show, status: :created, location: @team_comp }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @team_comp.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def team_comp_params
    params.require(:team_comp).permit(:name, champion_ids: [])
  end
end
