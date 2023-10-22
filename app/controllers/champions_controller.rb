class ChampionsController < ApplicationController
  def index
    @champions = Champion.order(:name).page(params[:page]).per(10)
  end

  def show
    @champion = Champion.find(params[:id])
  end
end
