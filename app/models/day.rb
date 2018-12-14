class Day < ApplicationRecord
    belongs_to :week


    def self.today
        where(:date) = Date.today
    end
end
