class CreatePermissionviewroles < ActiveRecord::Migration
  def change
    create_table :permissionviewroles do |t|
      t.integer :permissionview_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
