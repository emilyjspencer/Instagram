class Post < ActiveRecord::Base
 validates :caption, presence: true, length: { minimum: 3, maximum: 40 }
 validates :comments, presence: true, length: { minimum: 10, maximum: 500 }
end