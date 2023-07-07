class LeagueController < ApplicationController

    private

    def league
        params.permit(:player, :team)
    end
end