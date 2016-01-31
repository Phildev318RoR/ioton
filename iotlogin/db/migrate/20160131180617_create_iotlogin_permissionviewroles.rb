class CreateIotloginPermissionviewroles < ActiveRecord::Migration
  def change
    create_table :iotlogin_permissionviewroles do |t|
      t.string :name
      t.integer :permissionview_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
