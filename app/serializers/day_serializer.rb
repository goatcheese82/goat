class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :title
  belongs_to :week
end
