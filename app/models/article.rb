# == Schema Information
#
# Table name: articles
#
#  id          :integer          not null, primary key
#  title       :string(255)
#  content     :text
#  category_id :integer
#  created_at  :datetime
#  updated_at  :datetime
#
# Indexes
#
#  index_articles_on_category_id  (category_id)
#

class Article < ActiveRecord::Base
  belongs_to :category
  has_many :comments, dependent: :destroy

  validates :title, :content, presence: true
end
