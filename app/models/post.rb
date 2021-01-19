class Post < ApplicationRecord
  validates :title, :text, presence: true

  has_many :comments, dependent: :destroy
  has_many :users, through: :comments

  belongs_to :oc, class_name: 'User', foreign_key: 'user_id'
  #oc: original creator

  validates :title, :description, presence: true
end
