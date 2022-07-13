class Petition < ApplicationRecord
  has_many :user_petitions
  has_many :users, through: :user_petitions
  belongs_to :congressional_member
  
end
