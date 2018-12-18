class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :title, :notes
  belongs_to :week
  has_many :notes
end
