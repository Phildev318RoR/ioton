class CreatePermissionviews < ActiveRecord::Migration
  def change
    create_table :permissionviews do |t|
      t.integer :permission_id
      t.integer :viewmenu_id

      t.timestamps null: false
    end
  end
end
