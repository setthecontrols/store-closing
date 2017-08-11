class User < ApplicationRecord
  has_many :posts
  has_many :comments

  #something with the validates is breaking the app.
  has_secure_password
  validates :email, :username, uniqueness: true
  validates :first_name, :last_name, :password_digest, presence: true
end
