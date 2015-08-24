class CreateOrganizations < ActiveRecord::Migration
  def change
    create_table :organizations do |t|
      t.string :name
      t.string :mission
      t.string :type
      t.string :phone
      t.string :address_1
      t.string :address_2
      t.string :city
      t.string :state
      t.integer :zip

      t.timestamps null: false
    end
  end
end
