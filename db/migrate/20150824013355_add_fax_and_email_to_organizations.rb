class AddFaxAndEmailToOrganizations < ActiveRecord::Migration
  def change
    change_table :organizations do |t|
      t.string :email
      t.string :fax
    end
  end
end
