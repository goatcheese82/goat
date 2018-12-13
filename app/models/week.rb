class Week < ApplicationRecord
    validates_presence_of :start_day
    has_many :days
end
