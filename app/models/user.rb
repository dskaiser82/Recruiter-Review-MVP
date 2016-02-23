class User < ActiveRecord::Base
  has_many :reviews
  has_secure_password
  #record creation validation
  validates :name, presence: true
  validates :email, uniqueness: true
end
