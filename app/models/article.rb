class Article < ActiveRecord::Base
  
  belongs_to :user
  has_many :comments
  
  
   validates :title, length: { minimum: 5, message: "This article title is too short"}   # I did that <---- :)
   validates :title, uniqueness: true, uniqueness: { message: "This article title has already been
posted."}
   validates :body, length: { minimum: 15 }
 
 
end
