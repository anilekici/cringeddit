class Comment < ApplicationRecord
  belongs_to :user, :post

  validates :content, presence: true
end
