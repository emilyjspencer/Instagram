class Post < ActiveRecord::Base
 belongs_to :user
 validates :user_id, presence: true
 validates :caption, presence: true, length: { minimum: 3, maximum: 40 }
 validates :comments, presence: true, length: { minimum: 3, maximum: 500 }
end