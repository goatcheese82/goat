class WeekSerializer < ActiveModel::Serializer
  attributes :id, :start_day
  has_many :days
end
