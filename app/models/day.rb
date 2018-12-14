class Day < ApplicationRecord
    has_many :notes
    belongs_to :week
    after_create :set_title


    def self.today
        self.where("date = ?", "#{Date.today}")
    end

    def set_title
        self.title = self.date.strftime('%A')
        self.save
    end

    
end
