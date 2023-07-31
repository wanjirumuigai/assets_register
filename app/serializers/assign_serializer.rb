class AssignSerializer < ActiveModel::Serializer
  attributes :id, :user_id, :asset_id, :location, :department, :assigned_by, :is_returned, :return_date, :received_by
belongs_to :asset
belongs_to :user

end
