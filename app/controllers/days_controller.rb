class DaysController < ApplicationController
    before_action :set_days
    before_action :set_week

    def index
    end

    def new
        @day = Day.new
    end

    def create
        @day = Day.create!(day_params)
    end

    def show
        @day = Day.find(params[:id])
        render json: @day
    end

    def edit
    end

    def update
    end

    def destroy
    end


    private

    def set_days
        @days = Day.all
    end

    def set_day
        @day = Day.find(params[:id])
    end

    def set_week
        @week = Week.find(params[:week_id])
    end

    def day_params
        params.require(:day).permit(
            :title,
            :id,
            :week_id
        )
    end
end
