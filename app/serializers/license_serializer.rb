class LicenseSerializer < ActiveModel::Serializer
  attributes :id, :license_name, :purchase_date, :expiry_date, :number_of_users
end
