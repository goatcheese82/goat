class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content, :day
  belongs_to :day
end
