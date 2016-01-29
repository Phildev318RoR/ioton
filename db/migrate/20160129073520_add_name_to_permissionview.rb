class AddNameToPermissionview < ActiveRecord::Migration
  def change
    add_column:permissionviews, :name, :string
  end
end
