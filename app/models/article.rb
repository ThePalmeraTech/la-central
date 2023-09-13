class Article < ApplicationRecord
  belongs_to :user
  belongs_to :category
  has_many :comments, dependent: :destroy
  has_rich_text :body
  has_one_attached :photo

  validates :title, presence: true
  validates :body, presence: true
end
