class ApplicationController < ActionController::Base
    def index
        if !Day.all.empty?
            @today = Day.today.last
            @week = @today.week
            render '/index'
        else
            @today = Day.new
            @week = Week.new
            render '/index'
        end
    end
end
