class User < ApplicationRecord
  has_secure_password
  has_many :assets
  validates :firstname, :lastname, :email, :password, :role, :designation, :department, presence: true
  validates :role, inclusion: {in: %w(super_admin Admin User), message: "%{value} is not a valid role type. Input either super_admin, admin or user"}
end
