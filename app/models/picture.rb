class Picture < ApplicationRecord
  belongs_to :user
  validates :image,presence: true
  validates :content,presence: true
end
