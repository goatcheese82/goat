class NoteSerializer < ActiveModel::Serializer
  attributes :id, :content
  belongs_to :day
end
