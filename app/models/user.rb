class User < ApplicationRecord

	has_secure_password

	has_many :reviews

	has_many :comments

	validates :password, confirmation: true

	validates_presence_of :username
  validates_presence_of :password
  validates_presence_of :email
  validates_uniqueness_of :email
  validates_uniqueness_of :username

end
