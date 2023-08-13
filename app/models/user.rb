class User < ApplicationRecord
  has_secure_password

  validates :firstname, :lastname, :email, :password, :role, :designation, :department, presence: true
  validates :role, inclusion: {in: ["Super Admin", "Admin", "User"], message: "%{value} is not a valid role type. Input either Super Admin, Admin or User"}

  has_many :assigns

end
