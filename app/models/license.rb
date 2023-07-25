class License < ApplicationRecord
  validates :license_name, :purchase_date,  :expiry_date, :number_of_users, presence: true
  validates :number_of_users, numericality: { only_integer: true }
  validates :number_of_users, comparison: { greater_than_or_equal_to: 1 }
  validates :purchase_date, comparison: {less_than_or_equal_to: Date.today}
  validates :expiry_date, comparison: { greater_than: :purchase_date }
end
