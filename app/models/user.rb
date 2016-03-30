class User < ActiveRecord::Base
  validates :name, presence: true, uniqueness: true
  has_secure_password
  has_many :posts
  has_many :comments
end
# p192 and requires bcrypt ruby gem

# updated 30 Mar
