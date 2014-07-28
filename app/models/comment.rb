# == Schema Information
#
# Table name: comments
#
#  id         :integer          not null, primary key
#  content    :text
#  author     :string(255)
#  article_id :integer
#  created_at :datetime
#  updated_at :datetime
#
# Indexes
#
#  index_comments_on_article_id  (article_id)
#

class Comment < ActiveRecord::Base
    belongs_to :article

    validates :author, :content, presence: true
end
