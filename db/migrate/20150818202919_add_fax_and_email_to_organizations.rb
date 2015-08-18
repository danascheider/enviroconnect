class AddFaxAndEmailToOrganizations < ActiveRecord::Migration
  def up
    add_column :organizations, :fax, :string
    add_column :organizations, :email, :string
  end

  def down
    drop_column :organizations, :fax
    drop_column :organizations, :email
  end
end
