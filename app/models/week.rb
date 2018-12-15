class Week < ApplicationRecord
    validates_presence_of :start_day
    validates_uniqueness_of :start_day, :message => "already exists."
    has_many :days
    after_create :add_days

    def add_days
        self.days.create(date: "#{self.start_day}")
        self.days.create(date: "#{self.start_day + 1}")
        self.days.create(date: "#{self.start_day + 2}")
        self.days.create(date: "#{self.start_day + 3}")
        self.days.create(date: "#{self.start_day + 4}")
        self.days.create(date: "#{self.start_day + 5}")
        self.days.create(date: "#{self.start_day + 6}")
    end

    def current_week
    end

end
