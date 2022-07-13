class UserSerializer < ActiveModel::Serializer
  attributes :id, :name, :email, :username, :password_digest, :district, :admin, :congressional_member_id
  belongs_to :congressional_member
  has_many :user_petitions
  has_many :petitions
end
