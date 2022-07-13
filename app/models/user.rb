class User < ApplicationRecord
  has_secure_password

  has_many :user_petitions
  has_many :petitions, through: :user_petitions
  belongs_to :congressional_member

  validates :email, format: /\w+@\w+\.{1}[a-zA-Z]{2,}/, presence: true, uniqueness: true
  validate :permitted_emails
  validates :username, presence: true, uniqueness: true

  def permitted_emails
      unless email.match?(/gmail.com|yahoo.com|icloud.com/)
          errors.add(:permitted_emails, "Sorry, that email isn't permitted.")
      end
  end 

end
