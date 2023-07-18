class CreateAssets < ActiveRecord::Migration[7.0]
  def change
    create_table :assets do |t|
      t.string :asset_name
      t.string :model
      t.string :asset_tag
      t.string :serial_no
      t.string :category
      t.string :status
      t.integer :purchase_price
      t.boolean :marked_for_disposal, :null => false, :default => false

      t.timestamps
    end
  end
end
