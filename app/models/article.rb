class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_one_attached :photo, dependent: :destroy

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 20 }
end
