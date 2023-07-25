class License < ApplicationRecord
  validates :license_name, :purchase_date,  :expiry_date, :number_of_users, presence: true
  validates :number_of_users, numericality: { only_integer: true }
  validates :expiry_date, comparison: { greater_than: :purchase_date }
end
