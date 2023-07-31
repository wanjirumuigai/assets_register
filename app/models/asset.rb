class Asset < ApplicationRecord
  validates :asset_name, :model, :asset_tag, :serial_no, :category, :status, :purchase_price, presence: true
  validates :serial_no, :asset_tag, uniqueness: true
  validates :purchase_price, numericality: { only_integer: true }
  validates :status, inclusion: { in: %w(working damaged obsolete in_repair) }
  belongs_to :user
end
