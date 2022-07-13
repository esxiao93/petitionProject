class CongressionalMember < ApplicationRecord
  has_many :users
  has_many :key_issues
  has_many :petitions

end
