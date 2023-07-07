class TeamsController < ApplicationController
    before_action :set_team, only: [:show, :edit]

    def index
        @teams = Team.all
    end

    def show
    end

    def edit
    end

    private

    def team_params
        params.require(:team).permit(:name, :location)
    end
end