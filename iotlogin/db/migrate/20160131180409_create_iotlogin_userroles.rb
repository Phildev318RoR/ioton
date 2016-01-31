class CreateIotloginUserroles < ActiveRecord::Migration
  def change
    create_table :iotlogin_userroles do |t|
      t.string :name
      t.integer :user_id
      t.integer :role_id

      t.timestamps null: false
    end
  end
end
