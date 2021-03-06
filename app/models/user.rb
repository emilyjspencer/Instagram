class User < ActiveRecord::Base
 has_many :posts
 has_secure_password
 validates :username, presence: true, uniqueness: { case_sensitive: false }, length: { minimum: 5, maximum: 20 }
 VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
 validates :email, presence: true, length: { maximum: 40 }, uniqueness: { case_sensitive: false }, 
 format: { with: VALID_EMAIL_REGEX }
end