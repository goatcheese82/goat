class DaySerializer < ActiveModel::Serializer
  attributes :id, :date, :title
  belongs_to :week
  has_many :notes
end
