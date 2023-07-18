class CreateAssigns < ActiveRecord::Migration[7.0]
  def change
    create_table :assigns do |t|
      t.integer :user_id
      t.integer :asset_id
      t.string :location
      t.string :department
      t.string :assigned_by
      t.date :assign_date
      t.boolean :is_returned, :null => false, :default => false
      t.date :return_date
      t.string :received_by

      t.timestamps
    end
  end
end
