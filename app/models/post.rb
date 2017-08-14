class Post < ApplicationRecord
  has_attached_file :image, styles: { :medium => "640x"}

  belongs_to :user
  has_many :comments
end
