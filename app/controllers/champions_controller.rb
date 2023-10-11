class ChampionsController < ApplicationController
    def index
        @champions = Champion.order(:name)
    end

    def show
        @champion = Champion.find(params[:id])
    end
end
