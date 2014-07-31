# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  login           :string(255)
#  email           :string(255)
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#
# Indexes
#
#  index_users_on_email  (email)
#

class User < ActiveRecord::Base
	validates :login, presence: true, length: { maximum: 20 }
	VALID_EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
	validates :password, length: { minimum: 6 }
	validates :email, presence: true, uniqueness: { case_sensitive: false },
	                  format:  { with: VALID_EMAIL_FORMAT }
	has_secure_password
end
