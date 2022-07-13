class PetitionSerializer < ActiveModel::Serializer
  attributes :id, :title, :description, :signature, :congressional_member_id
  # belongs_to :congressional_member
  has_many :user_petitions
end
