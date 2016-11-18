class Review < ApplicationRecord
  belongs_to :user
  belongs_to :movie

  has_many :comments, as: :commentable


	validates_presence_of :body
	validates_presence_of :rating
end
