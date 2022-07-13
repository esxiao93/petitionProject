class CongressionalMemberSerializer < ActiveModel::Serializer
  attributes :id, :name, :bio, :districtNUM, :political_party, :years_in_office, :image_url
  has_many :petitions
  has_many :key_issues
end
