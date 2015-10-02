class ChangeZipToStringOnOrganizations < ActiveRecord::Migration
  def change
    change_column(:organizations, :zip, :string)
  end
end
