class AddFieldnameToAssets < ActiveRecord::Migration[7.0]
  def change
    add_column :assets, :notes, :string
  end
end
