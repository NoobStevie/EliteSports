class PlayersController < ApplicationController
    before_action :set_player, only: [:show, :edit]

    def index
        @players = Player.all
    end

    def show
    end

    def edit
    end

    private

    def player_params
        params.require(:player).permit(:name, :age)
    end
end