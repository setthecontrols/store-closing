class User < ApplicationRecord
  has_many: posts
  has_many: comments

  validates: :email, :user_id, uniqueness, true
  validates: :first_name, :last_name, :password_digest, presence: true
end
