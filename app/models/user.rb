class User < ActiveRecord::Base
  has_many :tweets
  validates :first_name, :last_name, :user_name, :email, :encrypted_password, :location, presence: true
  validates :user_name, :email, uniqueness: true
end
