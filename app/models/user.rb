class User < ApplicationRecord
  has_many: businesses
  has_many: postings
  has_many: comments
end
