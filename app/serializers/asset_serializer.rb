class AssetSerializer < ActiveModel::Serializer
  attributes :id, :asset_name, :model, :asset_tag, :serial_no, :category, :status, :purchase_price, :marked_for_disposal
end
