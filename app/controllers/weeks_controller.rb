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
            respond_to do |f|

                f.html { redirect_to weeks_path }
                f.json { render :json => @week }

            end
        else
            render new_week_path
        end
    end

    def show
        @week = Week.find(params[:id])
        respond_to do |f|
            f.json {render :json => @week}
            f.html {}
        end
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
