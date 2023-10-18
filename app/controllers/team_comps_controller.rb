class TeamCompsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @team_comp = TeamComp.new
  end
end
