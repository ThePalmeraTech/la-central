class Comment < ApplicationRecord
  belongs_to :article
  belongs_to :user
  validates :body, presence: true, length: { minimum: 5 }
  validates :user_id, presence: true
end
