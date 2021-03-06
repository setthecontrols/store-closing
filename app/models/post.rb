class Post < ApplicationRecord
  has_attached_file :image, styles: { :medium => "640x"}
  validates_attachment_content_type :image, :content_type => /\Aimage\/.*\z/

  belongs_to :user
  has_many :comments
end
