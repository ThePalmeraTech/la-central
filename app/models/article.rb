class Article < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_one_attached :photo

  validates :title, presence: true
  validates :body, presence: true, length: { minimum: 20 }
end
