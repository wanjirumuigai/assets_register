class CreateLicenses < ActiveRecord::Migration[7.0]
  def change
    create_table :licenses do |t|
      t.string :license_name
      t.date :purchase_date
      t.date :expiry_date
      t.integer :number_of_users

      t.timestamps
    end
  end
end
