class WeeksController < ApplicationController
    before_action :set_weeks
    before_action :set_week, only: [:show, :update]

    def index
        @week = Week.new
    end
    
    def new
        @week = Week.new
    end

    def create
        @week = Week.create(week_params)
        if @week.save
            redirect_to weeks_path
        else
            render new_week_path
        end
    end

    def show
    end

    def update
    end

    private

    def set_weeks
        @weeks = Week.all
    end

    def set_week
        @week = Week.find(params[:id])
    end

    def week_params
        params.require(:week).permit(
            :id,
            :start_day
        )
    end


end
