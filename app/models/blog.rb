class Blog < ApplicationRecord
  belongs_to :user
  has_many :posts

  validates :title, :slug, presence: true
  validates :slug, { uniqueness: { case_sensitive: false } }

  def to_param
    slug
  end
end
