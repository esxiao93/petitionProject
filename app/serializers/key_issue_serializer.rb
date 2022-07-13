class KeyIssueSerializer < ActiveModel::Serializer
  attributes :id, :title, :description
  belongs_to :congressional_member
end
