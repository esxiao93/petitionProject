class UserPetitionSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :petition_id
  # belongs_to :user
  # belongs_to :petition
end
