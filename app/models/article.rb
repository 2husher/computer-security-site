class Article < ActiveRecord::Base
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :title, :content, presence: true
end
