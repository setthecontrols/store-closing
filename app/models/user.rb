class User < ApplicationRecord
  has_many: businesses
  has_many: postings
  has_many: comments

  validates: :email, :user_id, uniqueness, true
  validates: :first_name, :last_name, :password_digest, presence: true
end
