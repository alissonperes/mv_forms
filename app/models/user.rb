class User < ApplicationRecord
  validates :username, presence: true, length: { minimum: 4, maximum: 60 },
                       uniqueness: { case_sensitive: false }
  validates :email, presence: true,
                    format: { with: URI::MailTo::EMAIL_REGEXP },
                    uniqueness: { case_sensitive: false }
  has_secure_password
  validates :password, presence: true, length: { minimum: 6 }
end
