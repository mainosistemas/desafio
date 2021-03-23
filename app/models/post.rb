class Post < ApplicationRecord
  belongs_to :user
  belongs_to :blog

  validates :title, presence: true
  validates :body, length: { minimum: 20, maximum: 500 }
end
