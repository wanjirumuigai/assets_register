class AssetSerializer < ActiveModel::Serializer

  attributes :id, :asset_name, :model, :asset_tag, :serial_no, :category, :status, :purchase_price, :notes, :marked_for_disposal



has_many :assigns
has_many :users, through: :assigns

end
