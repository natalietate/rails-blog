class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :posts, dependent: :destroy

  # downcase the email address before saving
  before_save { email.downcase! }

  # name is required, can't be more than 20 characters
  validates :name, presence: true, length: { maximum: 20 }

  # regular expression to validate email address (not required with HTML5)
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-]+(\.[a-z\d\-]+)*\.[a-z]+\z/i

  # email must be less than 200 characters, pass the regex and be unique
  validates :email, presence: true, length: { maximum: 200 }, format: { with: VALID_EMAIL_REGEX }, uniqueness: { case_sensitive: false }

  # bcrypt - pw must be at least 6 characters long
  has_secure_password
  validates :password, presence: true, length: {minimum: 6 }
end
