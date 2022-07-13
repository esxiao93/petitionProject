class PetitionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :signature, :congressional_member_id
  # belongs_to :congressional_member
end
